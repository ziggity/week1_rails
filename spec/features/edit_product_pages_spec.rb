require 'rails_helper'

describe "edit process" do
  it "edits a product in the database" do
    product = Product.create(:name => 'Rayban', :cost => 333, :country => 'USA')
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Name', :with => 'Nike'
    click_on 'Update Product'
    expect(page).to have_content 'Nike'
  end

  it "Spawns error when no $price is entered" do
    product = Product.create(:name => 'Rayban', :cost => 325, :country => 'USA')
    visit product_path(product)
    click_link 'Edit Product Info'
    fill_in 'Cost', :with => 'Nike'
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end

  it "delete the product" do
    product = Product.create(:name => 'Rayban', :cost => 325, :country => 'USA')
    visit product_path(product)
    click_link 'Delete Product'
    expect(page).to have_content 'successfully deleted from database!'
  end
end
