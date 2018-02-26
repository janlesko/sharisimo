class AddAddressToDevices < ActiveRecord::Migration[5.1]
  def change
    add_column :devices, :address, :string
  end
end
