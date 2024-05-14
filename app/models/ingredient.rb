class Ingredient < ApplicationRecord
  belongs_to :recipe
  has_one_attached :photo
end
