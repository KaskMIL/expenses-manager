require 'rails_helper'

RSpec.describe 'Test Categories', type: :feature do
  before do
    @user = User.create(name: 'Test', email: 'test@test.com', password: 'testing')

    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button('Log in')

    @category = Category.create(name: 'Movies', icon: 'movies_icon', user: @user)
  end

  it 'Current page should be category index page' do
    expect(current_path).to eq(categories_path)
  end

  it 'Should show the new Category name' do
    visit categories_path
    expect(page).to have_content(@category.name)
  end

  it 'Should show Category total spend' do
    visit category_path(@category)
    expect(page).to have_content('Total spend:')
  end
end
