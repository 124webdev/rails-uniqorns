class Booking < ApplicationRecord
  belongs_to :uniqorn
  belongs_to :user

  enum status: [ :pending, :rejected, :accepted ]

  validates :start_date, presence: true
  validates :end_date, presence: true
end
