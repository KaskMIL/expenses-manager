require 'rails_helper'

RSpec.describe 'User', type: :model do
  subject { User.create(name: 'Victoria') }

  it 'user should be created successfully' do
    expect(subject.name).to eq('Victoria')
  end

  it 'name must not be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
