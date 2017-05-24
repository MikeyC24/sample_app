module SessionsHelper

	#logs in the given user
	def log_in(user)
		session[:user_id] = user.id
	end

	#remembers  user in a persistent session
	def remember(user)
		user.remember
		cookies.permanent.signed[:user_id] = user.id
		cookies.permanent[:remember_token] = user.remember_token
	end

	def current_user?(user)
		user == current_user
	end

	#this allows us to fund user on everypage
	# we use find_by instread of .find bc .find raises an expcetion if no suer instead of nil
	def current_user
		if (user_id = session[:user_id])
			@current_user ||= User.find_by(id: user_id)
		elsif (user_id = cookies.signed[:user_id])
			user = User.find_by(id: user_id)
			if user && user.authenticated?(cookies[:remember_token])
				log_in user
				@current_user = user
			end
		end
	end

	#method to return true if user is logged in
	def logged_in?
		!current_user.nil?
	end

	#forgets a persistent session
	def forget(user)
		user.forget
		cookies.delete(:user_id)
		cookies.delete(:remember_token)
	end

	#logs out current user 
	def log_out
		forget(current_user)
		session.delete(:user_id)
		@current_user = nil
	end

end
