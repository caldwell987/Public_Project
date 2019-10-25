class ProfilesController < ApplicationController

        before_action :selected_user, only: [:show, :edit, :update]
    
      def index
        @users = User.all
        @selectedusers = User.all
      end
    
      def show
        @users = User.all
        @user = User.find_by_username(params[:id])
        @currentuser = User.find(session[:user_id])
        @selecteduser = User.find_by_username(params[:username])
        @selectcontacts = User.find_by_username(params[:username])
      end
    
    
      def add_friend
        
      end
        
      def remove_friend
          
      end
    
    
    private
    
      def selected_user
        @selectuser = User.find_by_username(params[:id])
      end
    
      def select_contact
        # @selectcontacts = User.find(params[:id])
      end
      
    
      def selected_user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :firstname, :lastname)
      end
end
