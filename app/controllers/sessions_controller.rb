class SessionsController < ApplicationController

def new
end

def create
  user = User.find_by(email: params.fetch(:email))
  # success = user.authenticate(params[:password])
  if user
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end

# private

#   def session_attributes
#     params.require(:session).permit(:password_hash, :user_id, :email, :id)
#   end

end
