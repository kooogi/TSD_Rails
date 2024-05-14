require 'rails_helper'

RSpec.describe "ingredients/show", type: :view do
  before(:each) do
    assign(:ingredient, Ingredient.create!(
      name: "Name",
      quantity: 2,
      recipe: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
