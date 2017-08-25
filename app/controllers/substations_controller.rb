class SubstationsController < ApplicationController
  before_action :set_substation, only: [:show, :edit, :update, :destroy]

  # GET /substations
  # GET /substations.json
  def index
    @substations = Substation.all
  end

  # GET /substations/1
  # GET /substations/1.json
  def show
  end

  # GET /substations/new
  def new
    @substation = Substation.new
  end

  # GET /substations/1/edit
  def edit
  end

  # POST /substations
  # POST /substations.json
  def create
    @substation = Substation.new(substation_params)

    respond_to do |format|
      if @substation.save
        format.html { redirect_to @substation, notice: 'Substation was successfully created.' }
        format.json { render :show, status: :created, location: @substation }
      else
        format.html { render :new }
        format.json { render json: @substation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /substations/1
  # PATCH/PUT /substations/1.json
  def update
    respond_to do |format|
      if @substation.update(substation_params)
        format.html { redirect_to @substation, notice: 'Substation was successfully updated.' }
        format.json { render :show, status: :ok, location: @substation }
      else
        format.html { render :edit }
        format.json { render json: @substation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substations/1
  # DELETE /substations/1.json
  def destroy
    @substation.destroy
    respond_to do |format|
      format.html { redirect_to substations_url, notice: 'Substation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substation
      @substation = Substation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def substation_params
      params.require(:substation).permit(:nombre_subestacion, :subestacion_abbr, :direccion, :extencion, :encargado_nombre, :encargado_apellidos, :capacidad, :fecha_puesta_servicio)
    end
end
