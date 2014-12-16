class TtimesController < ApplicationController
  before_action :set_ttime, only: [:show, :edit, :update, :destroy]

  def index
    @ttimes = Ttime.all
    respond_with(@ttimes)
  end

  def show
    respond_with(@ttime)
  end

  def new
    @ttime = Ttime.new
    respond_with(@ttime)
  end

  def edit
  end

  def create
    @car = Car.find(params[:car_id])
    @ttime = @car.ttimes.new(ttime_params)

    Track.all.each do |t|
      t.ttimes.each do |times|
        if @ttime.car_id == times.car_id && times.track_id == @ttime.track_id
          times.destroy
        end
      end
    end

    if @ttime.save
      redirect_to :back, notice: "Your time was added"
    else
      render :new
    end
    # @ttime = Ttime.new(ttime_params)
    # @ttime.save
    # respond_with(@ttime)
  end

  def update
    @ttime.update(ttime_params)
    respond_with(@ttime)
  end

  def destroy
    @ttime.destroy
    respond_with(@ttime)
  end

  private
    def set_ttime
      @ttime = Ttime.find(params[:id])
    end

    def ttime_params
      params.require(:ttime).permit(:minutes, :seconds, :miliseconds, :car_id, :user_id, :track_id)
    end
end
