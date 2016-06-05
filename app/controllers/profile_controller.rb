class ProfileController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy, :show]

  def show
 # grab the username from the URL as :id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else 
      # redirect to 404 (root for now)
      redirect_to root_path, :notice => "User not found!" 
    end
    
    if correct_user
      @wins = Win.filter_by_user_id(params[:id])
    else
      @wins = Win.filter_by_user_id_public(params[:id])
    end
  end 

  private

    def correct_user
      current_user.id == (params[:id])
    end
end
