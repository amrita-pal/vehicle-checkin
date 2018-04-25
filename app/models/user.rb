class User < ApplicationRecord
  # attr_accessible :email, :mobile_number, :password
  has_one :profile
  has_many :address
  has_many :flat, through: :flat_ownership
end
