class AddDateToMeasurements < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :date, :date
  end
end
