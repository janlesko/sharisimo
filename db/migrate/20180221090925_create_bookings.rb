class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :device, foreign_key: true
      t.string :state
      t.timestamps
    end
  end
end
