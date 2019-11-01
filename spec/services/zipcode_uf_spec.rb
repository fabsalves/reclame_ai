require 'rails_helper'

RSpec.describe ZipcodeUF do
  subject { described_class.(zipcode) }

  let(:zipcode) { '61814-284' }
  let(:zipcode_state) { 'CE' }

  it 'returns zipcode' do
    expect(subject).to eq zipcode_state
  end
end
