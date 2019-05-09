class FollowedUsersController < ApplicationController
    def create
        user_to_follow = find_user
        current_user.follow(user_to_follow)
        redirect_to user_to_follow
    end
   
    private
    
    def find_user
        @_user ||= User.find_by(username: params[:id])
    end
end