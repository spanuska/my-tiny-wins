class ProfileController < ApplicationController

  def show
    if !User.exists?(params[:id])
      # redirect to 404 (root for now)
      redirect_to root_path, :notice => "User not found!"
    elsif is_profile_owner?
      @wins = Win.filter_by_user_id(params[:id])
    else
      @wins = Win.filter_by_user_id_public(params[:id])
    end

  end 

  private

    def is_profile_owner?
      current_user && current_user.id == params[:id].to_i
    end
end
