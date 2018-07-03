class SmokingAreasController < ApplicationController
  before_action :set_smoking_area, only: [:show, :edit, :update, :destroy]

  # GET /smoking_areas
  # GET /smoking_areas.json
  def index
    @smoking_areas = SmokingArea.all
  end

  # GET /smoking_areas/1
  # GET /smoking_areas/1.json
  def show
  end

  # GET /smoking_areas/new
  def new
    @smoking_area = SmokingArea.new
  end

  # GET /smoking_areas/1/edit
  def edit
  end

  # POST /smoking_areas
  # POST /smoking_areas.json
  def create
    @smoking_area = SmokingArea.new(smoking_area_params)

    respond_to do |format|
      if @smoking_area.save
        format.html { redirect_to @smoking_area, notice: 'Smoking area was successfully created.' }
        format.json { render :show, status: :created, location: @smoking_area }
      else
        format.html { render :new }
        format.json { render json: @smoking_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smoking_areas/1
  # PATCH/PUT /smoking_areas/1.json
  def update
    respond_to do |format|
      if @smoking_area.update(smoking_area_params)
        format.html { redirect_to @smoking_area, notice: 'Smoking area was successfully updated.' }
        format.json { render :show, status: :ok, location: @smoking_area }
      else
        format.html { render :edit }
        format.json { render json: @smoking_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smoking_areas/1
  # DELETE /smoking_areas/1.json
  def destroy
    @smoking_area.destroy
    respond_to do |format|
      format.html { redirect_to smoking_areas_url, notice: 'Smoking area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smoking_area
      @smoking_area = SmokingArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smoking_area_params
      params.require(:smoking_area).permit(:area_name, :latitude, :longitude, :area_catagory, :statute, :penalty, :address)
    end
end
