class AddWorkIdToExercises < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :work_id, :integer
  end
end
