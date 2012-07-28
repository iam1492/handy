class SessionController < ApplicationController
	def new
		
	end

	def create
		@user = User.find_by_email(params[:session][:email])
		logger.info("email" + params[:session][:email])
		logger.info("password:" + params[:session][:password])
		if (@user && @user.authenticate(params[:session][:password]))
			logger.info("login Pass")
			# sign_in @user
			# redirect_to @user
		else
			logger.info("Some problem!!!!!")
			#render 'new'
		end
	end

	def destroy
		sign_out
	end
end
