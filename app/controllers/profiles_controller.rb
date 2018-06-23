class ProfilesController < ApplicationController
	def create
		@profile = Profile.new(profile_params)
		@profile.save!
		respond_to do |format|
			format.html
			format.json {render json: @profile }
		end
	end
	def new
		@profile = Profile.new
		respond_to do |format|
			format.html
			format.json {render json: @profile }
		end
	end
	private
		def profile_params
			params.require(:profile).permit(:age, :dob, :gender, :name)
		end
end
