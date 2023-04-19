class FriendshipsController < ApplicationController
  def create
    friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: params[:friend])
    if current_user.save
      flash[:notice] = "You've added #{friend.full_name} as a friend"
    else 
      flash[:alert] = "There was something wrong when trying to follow friend"
    end 
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "Stopped following #{User.find(params[:id]).full_name}"
    redirect_to my_friends_path
  end
end
