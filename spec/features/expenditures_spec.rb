require 'rails_helper'

RSpec.describe 'Expenditures Test', type: :feature do
  before do
    @user = User.create(name: 'Test', email: 'test@test.com', password: 'testing')

    visit new_user_session_path
    fill_in 'user_email', with: @user.email
    fill_in 'user_password', with: @user.password
    click_button('Log in')

    @category = Category.create(name: 'Movies', icon: 'movies_icon', user: @user)
    @exp = Expenditure.create(name: 'Test expenditure', category_id: @category.id, author_id: @user.id, amount: 300)

    visit expenditures_path
  end

  it 'Should show the name of the new expenditure' do
    expect(page).to have_content(@exp.name)
  end

  it 'Should display amount' do
    visit expenditure_path(@exp)
    expect(page).to have_content(@exp.amount)
  end
end
