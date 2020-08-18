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
    # GET "/users/#{@user.id}"
    # redirect_to userpath(@user)
    # redirect_to userpath(@user.id)
    # redirect_to userpath(1)
    log_in @user
    
    redirect_to @user
    flash[:success] = "Welcome to the Sample App!!"
    #success (valid params)
   else
    #failure (invalid params)
    render 'new'
   end
  end
  # GET /users/[id]/edit
  def edit
    @user = User.find(params[:id])
    
  end
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:success] = "WProfile updated" 
    redirect_to @user
    else
      render 'edit'
    end
  end
  
  private 
 
  def user_params
    params.require(:user).permit(:name, :email,
   :password ,:password_confirmation)
  end


end
