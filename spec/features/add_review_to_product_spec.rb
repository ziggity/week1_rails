require 'rails_helper'

describe 'review process' do
  it 'add review to product in database' do
    product = Product.create(:name => 'Rayban glasses', :cost => 325, :country => 'USA')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Zach'
    fill_in 'Content', :with => 'So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool So cool'
    click_on 'Create Review'
    expect(page).to have_content 'Zach'
  end

  it 'Spawns errors if user entered text into Rating column' do
    product = Product.create(:name => 'Rayban glasses', :cost => 325, :country => 'USA')
    visit product_path(product)
    click_link 'Add Review'
    fill_in 'Author', :with => 'Zach1'
    fill_in 'Content', :with => 'So cool So cool So cool So cool So cool So cool So cool So cool So cool So coolSo cool So cool So cool So cool So coolSo cool So cool So cool So cool So coolSo cool So cool So cool So cool So coolSo cool So cool So cool So cool So coolSo cool So cool So cool So cool So cool'
    click_on 'Create Review'
    expect(page).to have_content 'Rating can\'t be blank Rating is not a number'
  end

end
