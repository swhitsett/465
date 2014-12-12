class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
  	@cars = Car.all
  	@event = Event.all
  	@user = current_user
  	@car = @user.cars.new
  	
  end
end
