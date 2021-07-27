class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :name
      t.integer :cost
      t.text :explanation

      t.timestamps
    end
  end
end
