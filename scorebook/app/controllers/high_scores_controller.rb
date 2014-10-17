class HighScoresController < ApplicationController

   # GET /high_scores
   def index
      @high_scores = HighScore.all
   end

   # GET /high_scores/1
   def show
      @high_score = HighScore.find(params[:id])
   end

  # GET /high_scores/new
  def new
    @high_score = HighScore.new
  end

  # POST /high_scores
  def create
   @high_score = HighScore.new(params.require(:high_score).permit(:user, :game, :score))
    if @high_score.save
      redirect_to @high_score, notice: 'High score was successfully created.'
    else
      render :new
    end
  end

  # GET /high_scores/1/edit
  def edit
    @high_score = HighScore.find(params[:id])
  end


  # PATCH /high_scores/1
  def update
    @high_score = HighScore.find(params[:id])
    if @high_score.update(params.require(:high_score).permit(:user, :game, :score))
      redirect_to @high_score, notice: 'High score was successfully updated.'  
    else
      render :edit
    end
  end

end

