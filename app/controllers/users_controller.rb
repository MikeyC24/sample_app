class UsersController < ApplicationController

  def show
  	@user = User.find(params[:id])
  	#debugger could not get to work
  end

  def new
  end

end
