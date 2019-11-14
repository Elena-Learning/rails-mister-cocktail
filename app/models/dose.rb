class Dose < ApplicationRecord
  belongs_to :coctail
  belongs_to :ingredient
end
