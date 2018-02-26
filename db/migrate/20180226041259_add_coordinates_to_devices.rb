class AddCoordinatesToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :latitude, :float
    add_column :devices, :longitude, :float
  end
end
