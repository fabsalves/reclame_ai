class IpCity
  def self.call(ip)
    new(ip).city
  end

  def initialize(ip)
    @ip = ip
  end

  def city
    ip_location['city']
  end

  private

  attr_accessor :ip

  def ip_location
    Geocoder.search(ip).first.try(:data)
  end
end
