class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :category
      t.string :photo_url
      t.string :description
      t.boolean :availability
      t.decimal :price

      t.timestamps
    end
  end
end
