class FlatsController < ApplicationController
	def create
		@flat = Flat.new(flat_params)
		@flat.save!
		respond_to do |format|
			format.html
			format.json {render json: @flat }
		end
	end
	def new
		@flat = Flat.new
		respond_to do |format|
			format.html
			format.json {render json: @flat }
		end
	end
	private
		def flat_params
			params.require(:flat).permit(:capacity, :flat_no)
		end
end
