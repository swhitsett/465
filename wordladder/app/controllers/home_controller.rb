class HomeController < ApplicationController

  def index
    # don't need to do anything here
  end

  def show
    @query_text = params[:query,:query2,:query3,:query5]
    if @query_text =~ /^[a-zA-Z0-9\.\-]*$/
      @result = "#{@query_text}".split("\n") # @query_text #`whois #{@query_text}`.split("\n)
    else
      @result = ["Shouldnt be here"];
    end
  end

end
