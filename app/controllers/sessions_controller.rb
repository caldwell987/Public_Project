class SessionsController < ApplicationController
  
  
skip_before_action :authenticated, only: [:new, :create]

def new
end



def create 
  @user = User.find_by(username:params[:username])
  session[:user_id] = @user.id

  if @user.authenticate(params[:password])
    redirect_to @user
  else
    redirect_to '/login'
  end
end


def destroy 
  session.delete(:user_id)
  redirect_to '/login'
end

end
