class CampSite < ApplicationRecord
  belongs_to :city
  validates :name, presence: true, length: {in: 3..35}
  validates :description, uniqueness: false, length: {maximum: 200}
  validates :distance, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_nil: true
  validates :price, numericality: {greater_than_or_equal_to: 0}, allow_nil: true
end
