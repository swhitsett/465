class AccessesController < ApplicationController
  before_action :set_access, only: [:show, :edit, :update, :destroy]

  def index
    # @accesses = Access.all
    respond_with(@accesses)
  end

  def show
    respond_with(@access)
  end

  def new
    @access = Access.new
    respond_with(@access)
  end

  def edit
  end

  def create
    @image = Image.find params[:image_id]
    @access = @image.accesses.new(access_params)#@access = Access.new(access_params)
    @access.user_id = params[:user_id]
    #@access.save
    # respond_with(@access)
    # @image = Image.find params[:image_id]
    # @tag = @image.tags.new(tag_params)

    if @access.save
      redirect_to (@image), notice: 'Tag was successfully created'
    else
      render :new
    end
  end

  def update
    @access.update(access_params)
    respond_with(@access)
  end

  def destroy
    # @access.destroy
    # respond_with(@access)
    @access.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_access
      @access = Access.find(params[:id])
    end

    def access_params
      params.require(:access).permit(:image_id, :user_id)
    end
end
