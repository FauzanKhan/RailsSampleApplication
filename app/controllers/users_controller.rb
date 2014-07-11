class UsersController < ApplicationController
  
  def show
  	@user = User.find(8)
  	@title = @user.name
  end

  def new
  	@title = "Sign Up"
  end

  
end
