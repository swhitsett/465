class HighScoresController < ApplicationController

   # GET /high_scores
   def index
      @high_scores = HighScore.all
   end

   # GET /high_scores/1
   def show
      @high_score = HighScore.find(params[:id])
   end

end
