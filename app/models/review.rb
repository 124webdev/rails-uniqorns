class Review < ApplicationRecord
  belongs_to :booking
  has_one :user, through: :bookings
  has_one :user, through: :uniqorns

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 1..5, message: "has to be between 1 and 5" }
end
