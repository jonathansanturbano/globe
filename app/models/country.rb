class Country < ApplicationRecord
  # russia.cities => Moscow and Saint-Petersburg
  has_many :cities, dependent: :destroy
  validates :name, presence: true
  validates :population, presence: { message: "A country has people dummy!" }
  validates :continent, presence: true
end
