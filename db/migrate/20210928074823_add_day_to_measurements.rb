class AddDayToMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :day, :integer
  end
end
