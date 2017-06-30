require 'rails_helper'

describe "add to a database " do
  it "adds a new product to database" do
    visit products_path
    click_link 'Add Product'
    fill_in 'Name', :with => 'Nike'
    fill_in 'Cost', :with => '5'
    fill_in 'Country', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'successfully created in the database'
  end

  it "gives error when no name is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end
end
