require 'rails_helper'

RSpec.describe MatchLocations do
  subject { described_class.(ip, zipcode) }

  let(:ip) { '187.72.169.89' }
  let(:zipcode) { '75020-090' }
  
  it 'returns city' do
    expect(subject).to be_truthy
  end
end
