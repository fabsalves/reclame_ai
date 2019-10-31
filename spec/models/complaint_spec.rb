require 'rails_helper'

RSpec.describe Complaint, type: :model do
  describe 'Associations' do
    it { should belong_to(:customer) }
  end
end
