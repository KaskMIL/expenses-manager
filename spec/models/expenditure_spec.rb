require 'rails_helper'

RSpec.describe 'Expenditure', type: :model do
  before(:each) do
    @user = User.create(name: 'Victoria')
    @category = Category.create(name: 'Cat test', icon: 'Icon test')
    @subject = Expenditure.create(name: 'Exp test', amount: 300, author_id: @user.id, category_id: @category.id)
  end

  it 'name should not be valid' do
    @subject.name = nil
    expect(@subject).to_not be_valid
  end

  it 'amount should not be valid' do
    @subject.amount = nil
    expect(@subject).to_not be_valid
  end

  it 'amount should not be valid' do
    @subject.amount = 0
    expect(@subject).to_not be_valid
  end

  it 'amount should not be valid' do
    @subject.amount = -1
    expect(@subject).to_not be_valid
  end
end
