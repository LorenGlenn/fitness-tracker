require 'rails_helper'

describe 'add food page', js: true do
  it 'add food' do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit root_path
    click_on("View", :match => :first)
    click_on "Add Meal"
    fill_in "Name", with: "food"
    fill_in "Calorie intake", with: 100
    click_on "Create Food"
    expect(page).to have_content 100
  end
end
