class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :exercises
         has_many :measurements
         has_many :posts
         has_many :likes
         has_many :goals
         
         mount_uploader :avatar, AvatarUploader
    
    def current_goal
      goals.where('expiration_date >= ?', Date.current).last
    end
    
    def calorie_to_burn_per_day
      return 0 unless current_goal
      
      diff_weight = current_goal.weight - self.weight
      
      (7200 * diff_weight) / (current_goal.expiration_date - Date.current)
    end
    
    def weight_to_target
      current_goal.weight - self.weight
    end
    
    def basal_metabolism
      # 基礎代謝量（男） ＝ 13.397 × 体重（kg） ＋ 4.799 × 身長（cm） ー 5.677 × 年齢 ＋ 88.362
      # 基礎代謝量（女） ＝ 9.247 × 体重（kg） ＋ 3.098 × 身長（cm） ー 4.33 × 年齢 ＋ 447.593
      if gender == '男'
        13.397 * weight + 4.799 * height - 5.677 * age + 88.362
      else
        9.247 * weight + 3.098 * height - 4.33 * age + 447.593
      end
    end
    
    def age
      ((Date.current - birthday) / 365).floor
    end
    
    def calorie_burn_auto_per_day
      1.2 * basal_metabolism
    end
    
    def calories_burned
      exercises.where(date: Date.current).sum(:calories_burned)
    end
    
    def ingestible_calories
      calorie_burn_auto_per_day + calorie_to_burn_per_day + calories_burned
    end
    
    def ingestible_calories_rounding
      ingestible_calories.round
    end
    
    def suppress_ingest
      if weight_to_target > 0
        "摂取する"
      else
        "に抑える"
      end
     
    end
    
    
end
         
