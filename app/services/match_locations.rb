class MatchLocations
  def self.call(req_ip, order_zipcode)
    new(req_ip, order_zipcode).match?
  end

  def initialize(req_ip, order_zipcode)
    @req_ip = req_ip
    @order_zipcode = order_zipcode
  end

  def match?
    req_city.eql? delivery_city
  end

  private

  attr_accessor :req_ip, :order_zipcode

  def req_city
    req_zipcode = IpZipcode.(req_ip)

    zipcode_uf(req_zipcode)
  end

  def delivery_city
    zipcode_uf(order_zipcode)
  end

  def zipcode_uf(postal)
    ZipcodeUF.(postal)
  end
end
