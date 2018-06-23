class Country < ApplicationRecord
  has_many :regions
  validates :currency, presence: true, length: {is: 3}, format: {with: /[A-Z]+/}
  validates :name, presence: true, uniqueness: true, length: {in: 3..35}
end
