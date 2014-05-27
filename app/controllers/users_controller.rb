class UsersController < ApplicationController

 before_action :authenticate, :authorize, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user     = User.find(params[:id])
    @playlist = Playlist.new
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
###############
private

  def load_user
    return @user = User.find(params[:id])
  end


  def authorize
    unless current_user == @user
      redirect_to login_path
    end
  end

  def authenticate
    unless logged_in?
      redirect_to login_path
    end
  end

  def user_attributes
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :id)
  end

end

