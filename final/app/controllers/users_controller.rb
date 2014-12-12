class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def index
  	@cars = Car.all
  	@event = Event.all
  	@user = current_user
  	@car = @user.cars.new
  	
  end

  def user_params
	params.require(:user).permit(:user_id, cars_attributes: [:make])#params.require(:image).permit(:filename, :private, :user_id, :tag_id)
  end
end
