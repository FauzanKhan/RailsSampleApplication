class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  	@title = @user.name
  end

  def new
  	@title = "Sign Up"
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		# handle the save 
  		redirect_to @user, :flash => {:success => "welcome to the sample app!"}
  	else	
	  	@title = "Sign Up"
	  	render 'new'
	end
  end

   private

  def user_params
    params.require(:user).permit(:name, :email, :password, :salt, :encrypted_password)
  end
  
end
