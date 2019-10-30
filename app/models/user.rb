class User < ApplicationRecord
  after_initialize :set_default_role, if: :new_record?

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %i[client admin]

  def set_default_role
    self.role ||= :client
  end
end
