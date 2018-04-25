class Flat < ApplicationRecord
  # attr_accessible :capacity, :flat_no
  has_many :users, through: :flat_ownerships
end
