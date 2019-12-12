class Api::V1::UsersController < ApplicationController
  # skip_before_action :authenticated
  
  def index
    @users = User.all
    # render json: @users, status: 200
    render json: @users, include: [:contacts]
  end

end

