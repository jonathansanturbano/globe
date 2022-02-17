class City < ApplicationRecord
  belongs_to :country
  # 1/ a validation, to exist a city needs a reference to country.
  # 2/ It's a handy helper, now I can find the country of a city by doing city.country
  validates :name, presence: true
  validates :image_url, presence: true
end
