class AddMessageToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :message, :string
  end
end
