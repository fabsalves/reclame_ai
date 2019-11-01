require 'rails_helper'

RSpec.describe ZipcodeCity do
  subject { described_class.(zipcode) }

  let(:zipcode) { '75020-090' }
  let(:city) { 'Anápolis' }

  it 'returns city' do
    expect(subject).to eq city
  end
end
