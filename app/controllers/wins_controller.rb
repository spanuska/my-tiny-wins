class WinsController < ApplicationController
  before_action :set_win, only: [:show, :edit, :update, :destroy]

  # GET /wins
  # GET /wins.json
  def index
    @wins = Win.all
  end

  # GET /wins/1
  # GET /wins/1.json
  def show
  end

  # GET /wins/new
  def new
    @win = Win.new
  end

  # GET /wins/1/edit
  def edit
  end

  # POST /wins
  # POST /wins.json
  def create
    @win = Win.new(win_params)

    respond_to do |format|
      if @win.save
        format.html { redirect_to @win, notice: 'Win was successfully created.' }
        format.json { render :show, status: :created, location: @win }
      else
        format.html { render :new }
        format.json { render json: @win.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wins/1
  # PATCH/PUT /wins/1.json
  def update
    respond_to do |format|
      if @win.update(win_params)
        format.html { redirect_to @win, notice: 'Win was successfully updated.' }
        format.json { render :show, status: :ok, location: @win }
      else
        format.html { render :edit }
        format.json { render json: @win.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wins/1
  # DELETE /wins/1.json
  def destroy
    @win.destroy
    respond_to do |format|
      format.html { redirect_to wins_url, notice: 'Win was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_win
      @win = Win.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def win_params
      params.require(:win).permit(:description)
    end
end
