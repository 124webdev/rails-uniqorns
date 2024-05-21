class Uniqorn < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniquness: true, length: { min: 3 }
  validates :price_per_day, presence: true
end
