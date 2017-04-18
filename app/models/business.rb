class Business < ApplicationRecord
  belongs_to :city
  belongs_to :category
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :description, presence: true
  validates :phone, presence: true
  validates :website, presence: true
  validates :category, presence: true
  validates :image_url, presence: true
end
