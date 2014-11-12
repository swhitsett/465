class AccessesController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags
  # GET /tags.json
  def index
    #@tags = Access.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
  end

  # GET /tags/new
  def new
    #@access = Access.new
    @image = Image.find params[:image_id]
    @access = @image.tags.new
    @user = User.all
    @user_options = User.all.map{|u| [u.name, u.id]}
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
    @image = Image.find params[:image_id]
    @access = @image.accesses.new(tag_params)
    @user = User.all

    if @access.save
      redirect_to (@image), notice: 'Access was successfully created'
    else
      render :new
    end
    # @access = Access.new(tag_params)

    # respond_to do |format|
    #   if @access.save
    #     format.html { redirect_to @access, notice: 'Access was successfully created.' }
    #     format.json { render :show, status: :created, location: @access }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @access.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    if @access.update(tag_params)
      redirect_to image_tag(@access.doi), notice: 'Access was successfully updated.'
    else
      render :edit
    end
    # respond_to do |format|
    #   if @access.update(tag_params)
    #     format.html { redirect_to @access, notice: 'Access was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @access }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @access.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @access.destroy
    respond_to do |format|
      format.html { redirect_to tags_url, notice: 'Access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @access = Access.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:access).permit(:tag_string, :image_id)
    end
end
