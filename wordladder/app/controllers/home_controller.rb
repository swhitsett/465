class HomeController < ApplicationController
  load "#{Rails.root}/lib/ladder.rb"
 
  def index
    # don't need to do anything here
  end

  def show
      @query_text = Array.new
      @query_text.push(params[:start_word])
      @query_text.push(params[:query])
      @query_text.push(params[:query2])
      @query_text.push(params[:query3])
      @query_text.push(params[:query4])
      @query_text.push(params[:query5])
     
    if(edit_distance_of_one "dog","dog")	 
      	@result = @query_text # @query_text #`whois #{@query_text}`.split("\n)
      else
	@result = "damit"
      end
  end

end
