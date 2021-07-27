class CreateExerciseWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_works do |t|
      t.integer :exercise_id
      t.integer :work_id

      t.timestamps
    end
  end
end
