class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.integer   :mls
      t.string    :street_1
      t.string    :street_2
      t.string    :city
      t.string    :state
      t.integer   :zipcode, limit: 3
      t.string    :neighborhood
      t.integer   :sales_price, limit: 4
      t.datetime  :date_listed
      t.integer   :bedrooms, limit: 1
      t.integer   :bathrooms, limit: 1
      t.integer   :garage_size, limit: 2
      t.integer   :square_feet, limit: 3
      t.integer   :lot_size, limit: 3
      t.text      :description

      t.timestamps null: false
    end
  end
end
