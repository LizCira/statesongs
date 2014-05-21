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
 # user_attributes = params[:user]
  # @user = User.create({
  #   name: params[:user][:name],
  #   email: params[:user][:email],
  #   password: params[:user][:password],
  #   password_confirmation: params[:user][:password_confirmation],
  #   id: params[:user][:id]
  #   })
  @user = User.create(user_attributes)
  # @user = User.create(user_attributes)
    if @user.save
    redirect_to "/users/#{@user.id}", :notice => "Signed up!"
  else
    render "new"
  end
end

private

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :id)
  end

end

