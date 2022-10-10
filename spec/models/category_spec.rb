require 'rails_helper'

RSpec.describe 'Category', type: :model do
  subject { Category.create(name: 'Cat test', icon: 'Cat icon', user: User.new(name: 'Victoria')) }

  it 'Should be created successfully' do
    expect(subject.user.name).to eq('Victoria')
  end

  it 'name should not be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
