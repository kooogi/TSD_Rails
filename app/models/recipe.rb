class Recipe < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :ingredients, dependent: :destroy
  has_rich_text :content
  validate :ingredients_count

  private

  def ingredients_count
    errors.add(:base, "A recipe can have at most 3 ingredients") if ingredients.size > 3
  end
end
