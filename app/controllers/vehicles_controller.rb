class VehiclesController < ApplicationController
	def create
		@vehicle = Vehicle.new(vehicle_params)
		@vehicle.save!

		respond_to do |format|
			format.html
			format.json {render json: @vehicle }
		end
	end

	def new
		@vehicle = Vehicle.new
		respond_to do |format|
			format.html
			format.json {render json: @vehicle }
		end
	end


	private
		def vehicle_params
			params.require(:vehicle).permit(:vehicle_no, :vehicle_type)
		end
end
