class FlatOwnershipsController < ApplicationController
	def create
		@flat_ownership = FlatOwnership.new(flat_ownership_params)
		@flat_ownership.save!
		respond_to do |format|
			format.html
			format.json {render json: @flat_ownership }
		end
	end

	def new
		@flat_ownership = FlatOwnership.new
		respond_to do |format|
			format.html
			format.json {render json: @flat_ownership }
		end
	end

	private
		def flat_ownership_params
			params.require(:flat_ownership).permit(:flat_id, :user_id, :owonership_type, :tenure_start, :tenure_end)
		end
end
