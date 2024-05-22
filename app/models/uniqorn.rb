class Uniqorn < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price_per_day, presence: true
  validates :age, presence: true
  validates :speed, presence: true
end
