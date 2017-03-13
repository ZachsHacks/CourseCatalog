class SessionsController < ApplicationController
	def new
		u = current_user
		if current_user != nil
			redirect_to u
		end
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			redirect_to user
		else
			flash.now[:danger] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path
	end

	private

	def current_user
		User.find_by(id: session[:user_id])
	end

end
