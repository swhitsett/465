class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  # GET /images.json
  def index
    @images = Image.all
    @access = Access.all
    # @user = User.all
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @tag = @image.tags.new
    @access = @image.accesses.new
    
  end

  # GET /images/new
  def new
    @image = Image.new
    @image.tags.new
  end

  # GET /images/1/edit
  def edit

  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)
    @image.generate_filename
    @image.user = current_user


    @uploaded_io = params[:image][:uploaded_file]

    File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end

    if @image.save
      redirect_to @image, notice: 'Image was successfully created.'
    else
      render :new
    end

    # respond_to do |format|
    #   if @image.save
    #     format.html { redirect_to @image, notice: 'Image was successfully created.' }
    #     format.json { render :show, status: :created, location: @image }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @image.errors, status: :unprocessable_entity }
    #   end
  end

  # PATCH/PUT /images/1
  # PATCH/PUT /images/1.json
  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to @image, notice: 'Image was successfully updated.' }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to images_url, notice: 'Image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :private, :user_id, :tag_id, tags_attributes: [:tag_string])#params.require(:image).permit(:filename, :private, :user_id, :tag_id)
    end
end
