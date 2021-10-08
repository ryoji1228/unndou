class AddDateToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :date, :date
  end
end
