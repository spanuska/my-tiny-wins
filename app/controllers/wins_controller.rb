class WinsController < ApplicationController
  before_action :set_win, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @wins = Win.all
  end

  def show
  end

  def new
    @win = current_user.wins.build # creates new win through current user
  end

  def edit
  end

  def create
    @win = current_user.wins.build
      if @win.save
        redirect_to @win, notice: 'Win was successfully created.'
      else
        render :new
      end
  end

  def update
    if @win.update(win_params)
      redirect_to @win, notice: 'Win was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @win.destroy
    redirect_to wins_url
  end

  private
    def set_win
      @win = Win.find(params[:id])
    end

    def correct_user
      @win = current_user.wins.find_by(id: params[:id])
      redirect_to wins_path, notice: "Not authorized to edit this win" if @win.nil?
    end

    def win_params
      params.require(:win).permit(:description)
    end
end
