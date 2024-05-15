class RecipePolicy < ApplicationPolicy
  def update?
    record.creator == user
  end
end
