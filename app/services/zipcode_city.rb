class ZipcodeCity
  def self.call(zipcode)
    new(zipcode).city
  end

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def city
    return '' unless zipcode.present?

    address[:city]
  end

  private

  attr_accessor :zipcode

  def address
    Correios::CEP::AddressFinder.get(zipcode)
  end
end
