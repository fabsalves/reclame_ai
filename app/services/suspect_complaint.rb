class SuspectComplaint
  def self.call(current_ip, order_zipcode)
    new(current_ip, order_zipcode).suspect?
  end

  def initialize(current_ip, order_zipcode)
    @current_ip = current_ip
    @order_zipcode = order_zipcode
  end

  def suspect?
    current_city != delivery_city
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
