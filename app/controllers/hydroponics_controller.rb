class HydroponicsController < ApplicationController
  before_action :set_hydroponic, only: [:show, :edit, :update, :destroy]

  # GET /hydroponics
  # GET /hydroponics.json
  def index
    @hydroponics = Hydroponic.all
  end

  # GET /hydroponics/1
  # GET /hydroponics/1.json
  def show
  end

  # GET /hydroponics/new
  def new
    @hydroponic = Hydroponic.new
  end

  # GET /hydroponics/1/edit
  def edit
  end

  # POST /hydroponics
  # POST /hydroponics.json
  def create
    @hydroponic = Hydroponic.new(hydroponic_params)

    respond_to do |format|
      if @hydroponic.save
        format.html { redirect_to @hydroponic, notice: 'Hydroponic was successfully created.' }
        format.json { render :show, status: :created, location: @hydroponic }
      else
        format.html { render :new }
        format.json { render json: @hydroponic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hydroponics/1
  # PATCH/PUT /hydroponics/1.json
  def update
    respond_to do |format|
      if @hydroponic.update(hydroponic_params)
        format.html { redirect_to @hydroponic, notice: 'Hydroponic was successfully updated.' }
        format.json { render :show, status: :ok, location: @hydroponic }
      else
        format.html { render :edit }
        format.json { render json: @hydroponic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hydroponics/1
  # DELETE /hydroponics/1.json
  def destroy
    @hydroponic.destroy
    respond_to do |format|
      format.html { redirect_to hydroponics_url, notice: 'Hydroponic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hydroponic
      @hydroponic = Hydroponic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hydroponic_params
      params.require(:hydroponic).permit(:fecha, :descripcion, :costo, :materiales)
    end
end
