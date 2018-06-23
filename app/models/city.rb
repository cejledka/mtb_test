class City < ApplicationRecord
  belongs_to :region
  has_many :camp_sites
end
