class MatchLocations
  def self.call(current_ip, order_zipcode)
    new(current_ip, order_zipcode).match?
  end

  def initialize(current_ip, order_zipcode)
    @current_ip = current_ip
    @order_zipcode = order_zipcode
  end

  def match?
    current_city.eql? delivery_city
  end

  private

  attr_accessor :current_ip, :order_zipcode

  def current_city
    IpCity.(current_ip)
  end

  def delivery_city
    ZipcodeCity.(order_zipcode)
  end
end
