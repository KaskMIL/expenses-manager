require 'rails_helper'

RSpec.describe 'Category', type: :model do
  before(:each) do
    @user = User.create(name: 'Victoria')
    @subject = Category.create(name: 'Cat test', icon: 'Icon test', user_id: @user.id)
  end

  it 'Should be created successfully' do
    expect(@user.name).to eq('Victoria')
  end

  it 'name should not be valid' do
    @subject.name = nil
    expect(@subject).to_not be_valid
  end
end
