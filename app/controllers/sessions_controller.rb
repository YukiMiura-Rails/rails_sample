class SessionsController < ApplicationController
  def new
    # @session = Session.new XX
    # scope::session + url : login_path 
  end
  def create
   user = User.find_by(email: 
   params[:session][:email].downcase)
   if user and user.authenticate(params[:session][:password])
    #SUCCESS auth
    #  log_in(@user)
   else
    #FAILURE
    flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
   end
   
  end
end
