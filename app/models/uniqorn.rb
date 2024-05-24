class Uniqorn < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
  has_many :bookings
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
                  against: :name,
                  using: {
                    tsearch: { prefix: true } # <-- now `superman batm` will return something!
                  }

  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :price_per_day, presence: true,
                            comparison: { greater_than_or_equal_to: 1, message: "cannot be negative value" }
  validates :age, presence: true, comparison: { greater_than_or_equal_to: 1, message: "cannot be negative number" }
  validates :speed, presence: true, comparison: { greater_than_or_equal_to: 1, message: "cannot be less than 1km/h" }
  validates :photo, presence: true
end
