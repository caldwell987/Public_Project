class UsersController < ApplicationController
    
  before_action :current_user, only: [:show, :edit, :update]
  skip_before_action :authenticated, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(session[:user_id])
    @contacts = current_user.contacts
  end


  def new
    @users = User.all
    @user = User.new
  end


  def create
    @user = User.new(users_params)
    if @user.valid?
      @user.save
      redirect_to @user
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user.update(users_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

private

  def current_user
    @user = User.find(session[:user_id])
  end
  

  def users_params
    params.require(:user).permit(:username, :password, :password_confirmation, :firstname, :lastname)
  end

end

