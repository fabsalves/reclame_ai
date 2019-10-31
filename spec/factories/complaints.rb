FactoryBot.define do
  factory :complaint do
    order_id { '#12AV' }
    zipcode { '61814-284' }
    description { 'Houve 10 dias de atraso.' }
    customer { nil }
  end
end
