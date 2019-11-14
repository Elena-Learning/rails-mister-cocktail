class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
