class Uniqorn < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
<<<<<<< HEAD
  
  valdidates :name, presence: true, uniquness: true, length: { min: 3 }
  valdidates :price_per_day, presence: true
=======

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price_per_day, presence: true
>>>>>>> cbcaf9302025b97726cf757f504f2abe6b55b47f
end
