class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.date :expiration_date
      t.integer :weight

      t.timestamps
    end
  end
end
