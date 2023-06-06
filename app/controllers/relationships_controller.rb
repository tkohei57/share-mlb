class RelationshipsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]

  def create
    follow = current_user.active_relationships.new(follower_id: params[:user_id])
    follow.save
    to_mypage
  end

  def destroy
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    if current_user != @user
      redirect_to user_path(current_user)
    else
      to_mypage
    end
  end

  private
  def set_user
    @user = User.find(params[:user_id])
  end

  def to_mypage
    redirect_to user_path(@user)
  end
  
end
