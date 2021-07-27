class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.float :weight
      t.float :fat_rate
      t.integer :user_id

      t.timestamps
    end
  end
end
