class AddHeightToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :height, :float
  end
end
