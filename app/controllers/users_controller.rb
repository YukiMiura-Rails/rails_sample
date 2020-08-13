class UsersController < ApplicationController
  # get users/new
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    # debugger
  end
  def create
   # debugger
   @user = User.new(user_params)
   if @user.save
    #success (valid params)
   else
    #failure (invalid params)
    render 'new'
   end
  end
 
  private 
 
  def user_params
    params.require(:user).permit(:name, :email,
   :password ,:password_confirmation)
  end


end
