class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user, through: :booking
  belongs_to :user, through: :uniqorn

  validates :content, presence: true
  validates :rating, presence: true
end
