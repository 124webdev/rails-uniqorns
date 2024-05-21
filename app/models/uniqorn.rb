class Uniqorn < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings

  valdidates :name, presence: true, uniquness: true, length: { min: 3 }
  valdidates :price_per_day, presence: true
end
