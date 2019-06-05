class UpdateTripsColumnTypes < ActiveRecord::Migration[5.2]
  def change
      change_column(:trips , :rider_id , :integer)
      change_column(:trips , :scooter_id , :integer)
  end
end
