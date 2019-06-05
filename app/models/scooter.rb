class Scooter < ActiveRecord::Base

  has_many :trips
  has_many :riders, through: :trips

end
