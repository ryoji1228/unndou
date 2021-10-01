class RemoveDayFromMeasurements < ActiveRecord::Migration[5.2]
  def change
    remove_column :measurements, :day, :integer
  end
end
