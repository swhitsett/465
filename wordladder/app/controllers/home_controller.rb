class HomeController < ApplicationController
  load "#{Rails.root}/lib/ladder.rb"
 
  def index
    # don't need to do anything here
  end

  def show
    @correct = false
    @query_text = Array.new
    @query_text.push(params[:start_word])
    @query_text.push(params[:query1]) if params[:query1] != ""
    @query_text.push(params[:query2]) if params[:query2] != ""
    @query_text.push(params[:query3]) if params[:query3] != ""
    @query_text.push(params[:query4]) if params[:query4] != ""
    @query_text.push(params[:query5]) if params[:query5] != ""
    @query_text.push(params[:end_word])
    # @query_text.compact!

    
    # if(edit_distance_of_one @query_text.at(1), @query_text.at(2))
    #     @correct = true
    # end

    # @query_text.each {|check|
    #   if(edit_distance_of_one check, @query_text.at(@query_text.index(check)+1))
    #       puts "hilo"
    #   else
    #       puts "wrong"
    #   end
    # }
    


  end

end
