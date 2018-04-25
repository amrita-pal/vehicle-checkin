class Address < ApplicationRecord
  # attr_accessible :address_line, :address_type, :district, :landmark, :pin, :state
  belongs_to :user
end
