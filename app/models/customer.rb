class Customer < ApplicationRecord
  has_many :complaints

  validates :name, presence: true
  validates :email, presence: true
end
