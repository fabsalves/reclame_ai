require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'Associations' do
    it { should have_many(:complaints) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
  end
end
