class Category < ApplicationRecord
  has_many :businesses
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true

  def to_param
    slug
  end
end
