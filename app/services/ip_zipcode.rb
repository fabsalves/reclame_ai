class IpZipcode
  def self.call(ip)
    new(ip).zipcode
  end

  def initialize(ip)
    @ip = ip
  end

  def zipcode
    ip_location['postal']
  end

  private

  attr_accessor :ip

  def ip_location
    Geocoder.search(ip).first.try(:data)
  end
end
