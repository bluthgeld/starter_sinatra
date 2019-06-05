class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.text :date
      t.string :mileage
      t.string :pick_up_loc
      t.string :drop_off_loc
      t.string :rider_id
      t.string :scooter_id
    end
  end
end
