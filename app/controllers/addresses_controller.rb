class AddressesController < ApplicationController
	def create
		@address = current_user.addresses.build(address_params)
		# @address = Address.new(address_params)
		
		# @address = Address.new(address_params)
		# @address.user = current_user
		
		@address.save!
		puts @address.errors.full_messages 
		respond_to do |format|
			format.html
			format.json {render json: @address }
		end
	end

	def new
		@address = Address.new
		@user = current_user
    respond_to do |format|
      format.html 
      format.json { render json: @address }
    end
	end

	private

	  def address_params
	    params.require(:address).permit(:address_line, :address_type, :district, :landmark, :pin, :state)
	  end
end
