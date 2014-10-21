class DoiTablesController < ApplicationController
  before_action :set_doi_table, only: [:show, :edit, :update, :destroy]

  # GET /doi_tables
  # GET /doi_tables.json
  def index
    @doi_tables = DoiTable.all
  end

  # GET /doi_tables/1
  # GET /doi_tables/1.json
  def show
  end

  # GET /doi_tables/new
  def new
    @doi_table = DoiTable.new
  end

  # GET /doi_tables/1/edit
  def edit
  end

  # POST /doi_tables
  # POST /doi_tables.json
  def create
    @doi_table = DoiTable.new(doi_table_params)

    respond_to do |format|
      if @doi_table.save
        format.html { redirect_to @doi_table, notice: 'Doi table was successfully created.' }
        format.json { render :show, status: :created, location: @doi_table }
      else
        format.html { render :new }
        format.json { render json: @doi_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doi_tables/1
  # PATCH/PUT /doi_tables/1.json
  def update
    respond_to do |format|
      if @doi_table.update(doi_table_params)
        format.html { redirect_to @doi_table, notice: 'Doi table was successfully updated.' }
        format.json { render :show, status: :ok, location: @doi_table }
      else
        format.html { render :edit }
        format.json { render json: @doi_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doi_tables/1
  # DELETE /doi_tables/1.json
  def destroy
    @doi_table.destroy
    respond_to do |format|
      format.html { redirect_to doi_tables_url, notice: 'Doi table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doi_table
      @doi_table = DoiTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doi_table_params
      params.require(:doi_table).permit(:name, :desc, :url)
    end
end
