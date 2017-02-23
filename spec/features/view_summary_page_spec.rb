require 'rails_helper'

describe 'see summary page process' do
  it 'show summary' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_link("View", :match => :first)
    expect(page).to have_content 'Net Calories'
  end
end
