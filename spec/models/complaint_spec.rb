require 'rails_helper'

RSpec.describe Complaint, type: :model do
  describe 'Associations' do
    it { should belong_to(:customer) }
  end

  describe 'validations' do
    it { should validate_presence_of(:order_id) }
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:description) }
  end
end
