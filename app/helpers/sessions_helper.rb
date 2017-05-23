module SessionsHelper

	#logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end

	#this allows us to fund user on everypage
	# we use find_by instread of .find bc .find raises an expcetion if no suer instead of nil
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#method to return true if user is logged in
	def logged_in?
		!current_user.nil?
	end

end
