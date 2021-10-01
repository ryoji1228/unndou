class RemoveMonthFromMeasurements < ActiveRecord::Migration[5.2]
  def change
    remove_column :measurements, :month, :integer
  end
end
