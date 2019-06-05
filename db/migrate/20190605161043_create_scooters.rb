class CreateScooters < ActiveRecord::Migration[5.2]
  def change
    create_table :scooters do |t|
      t.string :name
      t.string :model
      t.string :color
      t.text :inception_date
    end
  end
end
