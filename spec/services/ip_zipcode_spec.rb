require 'rails_helper'

RSpec.describe IpZipcode do
  subject { described_class.(ip) }

  let(:ip) { '138.204.184.58' }
  let(:ip_zipcode) { '61900-000' }

  it 'returns zipcode' do
    expect(subject).to eq ip_zipcode
  end
end
