class AddDatesToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :startdate, :date
    add_column :bookings, :enddate, :date
  end
end
