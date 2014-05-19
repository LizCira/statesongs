class UsersController < ApplicationController


def index
  @users = User.all
end

def show
    @user = User.find(params[:id])
end

def new
  @user = User.new
end

def create
  @user = User.create(user_attributes)
    if @user.save
    redirect_to "/users/#{@user.id}", :notice => "Signed up!"
  else
    render "new"
  end
end

private

  def user_attributes
    params.require(:user).permit(:name, :email, :password_hash, :password_salt, :id)
  end

end

