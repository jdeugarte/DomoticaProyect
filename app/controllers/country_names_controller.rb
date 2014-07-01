class CountryNamesController < ApplicationController
  before_action :set_country_name, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource  


  # GET /country_names
  # GET /country_names.json
  def index
    @country_names = CountryName.all
  end

  # GET /country_names/1
  # GET /country_names/1.json
  def show
  end

  # GET /country_names/new
  def new
    @country_name = CountryName.new
  end

  # GET /country_names/1/edit
  def edit
  end

  # POST /country_names
  # POST /country_names.json
  def create
    @country_name = CountryName.new(country_name_params)

    respond_to do |format|
      if @country_name.save
        format.html { redirect_to @country_name, notice: 'Country name was successfully created.' }
        format.json { render action: 'show', status: :created, location: @country_name }
      else
        format.html { render action: 'new' }
        format.json { render json: @country_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /country_names/1
  # PATCH/PUT /country_names/1.json
  def update
    respond_to do |format|
      if @country_name.update(country_name_params)
        format.html { redirect_to @country_name, notice: 'Country name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @country_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /country_names/1
  # DELETE /country_names/1.json
  def destroy
    @country_name.destroy
    respond_to do |format|
      format.html { redirect_to country_names_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country_name
      @country_name = CountryName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_name_params
      params.require(:country_name).permit(:name, :code)
    end
end
