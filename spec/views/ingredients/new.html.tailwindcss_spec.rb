require 'rails_helper'

RSpec.describe "ingredients/new", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.new(
      name: "MyString",
      quantity: 1,
      recipe: nil
    ))
  end

  it "renders new ingredient form" do
    render

    assert_select "form[action=?][method=?]", ingredients_path, "post" do

      assert_select "input[name=?]", "ingredient[name]"

      assert_select "input[name=?]", "ingredient[quantity]"

      assert_select "input[name=?]", "ingredient[recipe_id]"
    end
  end
end
