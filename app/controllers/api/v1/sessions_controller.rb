class Api::V1::SessionsController < ApplicationController
  def new
  end

  def create 
    @user = User.where(username: params[:username]).first

    if @user.valid_password?(params[:password])
      render json: @user.as_json(only: [:id, :username]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy 
    session.delete(:user_id)
    redirect_to '/login'
  end
end