require 'rails_helper'

RSpec.describe IpCity do
  subject { described_class.(ip) }

  let(:ip) { '187.72.169.89' }
  let(:city) { 'Anápolis' }

  it 'returns city' do
    expect(subject).to eq city
  end
end
