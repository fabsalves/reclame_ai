class Complaint < ApplicationRecord
  belongs_to :customer

  accepts_nested_attributes_for :customer

  validates :order_id, presence: true
  validates :zipcode, presence: true
  validates :description, presence: true
end
