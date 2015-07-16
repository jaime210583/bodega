class FrutaController < ApplicationController
  before_action :set_frutum, only: [:show, :edit, :update, :destroy]

  # GET /fruta
  # GET /fruta.json
  def index
    @fruta = Frutum.all
  end

  # GET /fruta/1
  # GET /fruta/1.json
  def show
  end

  # GET /fruta/new
  def new
    @frutum = Frutum.new
  end

  # GET /fruta/1/edit
  def edit
  end

  # POST /fruta
  # POST /fruta.json
  def create
    @frutum = Frutum.new(frutum_params)

    respond_to do |format|
      if @frutum.save
        format.html { redirect_to @frutum, notice: 'Frutum was successfully created.' }
        format.json { render :show, status: :created, location: @frutum }
      else
        format.html { render :new }
        format.json { render json: @frutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fruta/1
  # PATCH/PUT /fruta/1.json
  def update
    respond_to do |format|
      if @frutum.update(frutum_params)
        format.html { redirect_to @frutum, notice: 'Frutum was successfully updated.' }
        format.json { render :show, status: :ok, location: @frutum }
      else
        format.html { render :edit }
        format.json { render json: @frutum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fruta/1
  # DELETE /fruta/1.json
  def destroy
    @frutum.destroy
    respond_to do |format|
      format.html { redirect_to fruta_url, notice: 'Frutum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frutum
      @frutum = Frutum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frutum_params
      params.require(:frutum).permit(:tipo, :descripcion, :precio)
    end
end
