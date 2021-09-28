class AddMonthToMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :month, :integer
  end
end
