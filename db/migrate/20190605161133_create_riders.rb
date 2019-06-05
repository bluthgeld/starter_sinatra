class CreateRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :membership_type
    end
  end
end
