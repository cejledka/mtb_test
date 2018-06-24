class Region < ApplicationRecord
  belongs_to :country
  has_many :cities
  validates :name, presence: true, uniqueness: false, length: {in: 3..50}
end
