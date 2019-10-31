class Api::V1::FriendshipsController < ApplicationController

    def create
        @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
        if @friendship.save
          flash[:notice] = "Added friend."
          
          render json: @friendship, status: 200
        else
          flash[:notice] = "Unable to add friend."
          head(:unauthorized)
        end
    end

    def destroy
        @friendship = current_user.friendships.find(params[:id])
        @friendship.destroy
        flash[:notice] = "Removed friendship."
        redirect_to current_user
        
        render json: @friendship, status: 200
    end

end
