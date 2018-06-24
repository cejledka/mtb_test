class City < ApplicationRecord
  belongs_to :region
  has_many :camp_sites
  validates :name, presence: true, uniqueness: false, length: {in: 3..50}
end
