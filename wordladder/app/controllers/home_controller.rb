class HomeController < ApplicationController

  def index
    # don't need to do anything here
  end

  def show
    @query_text = Array.new
   # @query_text = [:query,:query2,:query3,:query5]
      @query_text.push(params[:query])
      @query_text.push(params[:query2])
      @query_text.push(params[:query3])
      @query_text.push(params[:query4])
      @query_text.push(params[:query5])

      @result = @query_text # @query_text #`whois #{@query_text}`.split("\n)
  end

end
