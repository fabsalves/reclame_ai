class ZipcodeUF
  def self.call(zipcode)
    new(zipcode).uf
  end

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def uf
    return '' unless zipcode.present?

    address['uf']
  end

  private

  attr_accessor :zipcode

  def address
    JSON.parse(integration)
  end

  def integration
    Faraday.get(viacep_url).body
  end

  def viacep_url
    "https://viacep.com.br/ws/#{zipcode}/json/"
  end
end
