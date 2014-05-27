class SessionsController < ApplicationController

def new
end

 def create
    # find if any user has that email
    user = User.find_by(email: params[:email])

    # if that user exists and it has a password that
    # was sent
    if user && ( user.authenticate(params[:password]) )

      # save the user_id in the session hash
      session[:user_id] = user.id

      # and redirect to that user's home page
      redirect_to( user_path(user) )
    else

      # the email/password is wrong!
      @message = "This email and password combination does not exist. Please try again or sign in."
      render(:new)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end


# def new
# end

# def create
#   user = User.authenticate(params[:email], params[:password])
#   # user = User.find_by(email: params.fetch(:email))

#   if user
#     session[:user_id] = user.id
#       redirect_to "/users/#{user.id}", :notice => "Logged in!"
#   else
#     flash.now.alert = "Invalid email or password"
#     render "new"
#   end
# end

# def destroy
#   session[:user_id] = nil
#   redirect_to root_url, :notice => "Logged out!"
# end

end
