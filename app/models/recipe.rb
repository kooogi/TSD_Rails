class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients
  has_rich_text :content
end
