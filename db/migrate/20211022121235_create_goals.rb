class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.date :expiration_date
      t.integer :weight

      t.timestamps
    end
  end
end
