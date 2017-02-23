require 'rails_helper'

describe 'add food page', js: true do
  it 'add food' do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit root_path
    summary = Summary.create(:user_id => user.id, :date => '2017-01-30')
    click_on("View", :match => :first)
    binding.pry
    expect(page).to have_content 'Net Calories'
  end
end
