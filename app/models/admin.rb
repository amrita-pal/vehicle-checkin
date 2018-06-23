class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


# class User < ApplicationRecord
#   # attr_accessible :email, :mobile_number, :password
  
#   has_one :profile
#   has_many :addresses
#   has_many :flat, through: :flat_ownership

# end
