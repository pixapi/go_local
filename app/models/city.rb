class City < ApplicationRecord
  has_many :businesses
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true
end
