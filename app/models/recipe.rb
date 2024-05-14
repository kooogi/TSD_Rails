class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients

end
