class AddTimeToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :time, :integer
  end
end
