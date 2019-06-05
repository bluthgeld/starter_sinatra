class Rider < ActiveRecord::Base

  has_many :trips
  has_many :scooters, through: :trips

end
