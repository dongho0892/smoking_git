class PlaceRegistersController < ApplicationController
  before_action :set_place_register, only: [:show, :edit, :update, :destroy]

  # GET /place_registers
  # GET /place_registers.json
  def index
    @place_registers = PlaceRegister.all
  end

  # GET /place_registers/1
  # GET /place_registers/1.json
  def show
  end

  # GET /place_registers/new
  def new
    @place_register = PlaceRegister.new
  end

  # GET /place_registers/1/edit
  def edit
  end

  # POST /place_registers
  # POST /place_registers.json
  def create
    @place_register = PlaceRegister.new(place_register_params)

    respond_to do |format|
      if @place_register.save
        format.html { redirect_to @place_register, notice: 'Place register was successfully created.' }
        format.json { render :show, status: :created, location: @place_register }
      else
        format.html { render :new }
        format.json { render json: @place_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_registers/1
  # PATCH/PUT /place_registers/1.json
  def update
    respond_to do |format|
      if @place_register.update(place_register_params)
        format.html { redirect_to @place_register, notice: 'Place register was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_register }
      else
        format.html { render :edit }
        format.json { render json: @place_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_registers/1
  # DELETE /place_registers/1.json
  def destroy
    @place_register.destroy
    respond_to do |format|
      format.html { redirect_to place_registers_url, notice: 'Place register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_register
      @place_register = PlaceRegister.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_register_params
      params.require(:place_register).permit(:type, :area_name, :description, :address, :latitude, :longitude)
    end
end
