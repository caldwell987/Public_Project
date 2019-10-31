class Api::V1::UsersController < ApplicationController
    
  before_action :current_user, only: [:show, :edit, :update]
  before_action :kind, only: [:new, :edit, :update, :destroy]
  skip_before_action :authenticated

  def index
    @users = User.all

    render json: @users, status: 200
  end

  def show
    @user = User.find(session[:user_id])
    @selecteduser = User.find_by_username(params[:username])

    render json: @user, status: 200
  end

  def friends
    @user = current_user

    render json: @user, status: 200
  end

  def new
    @users = User.all
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to current_user
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

  def add_friend
    
  end
    
  def remove_friend
      
  end

  def kind
    @kind = ["Phone", "Email", "Website", "Linkedin", "Facebook", "Instagram", "Twitter"]
  end

private

  def current_user
    @user = User.find(session[:user_id])
  end

  def select_contact
    @selectcontacts = User.find(params[:id])
  end
  

  def users_params
    params.require(:user).permit(:username, :password, :password_confirmation, :firstname, :lastname, contacts_attributes: [:user_id, :kind, :value, :_destroy])
  end

end

