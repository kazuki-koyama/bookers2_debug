class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    user = User.find(params[:followed_id])
    current_user.follow(user)
    redirect_to user
  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end

  private
    def set_user
  		@user = User.find(params[:followed_id])
  	end
end
