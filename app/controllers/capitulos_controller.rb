class CapitulosController < ApplicationController
  before_action :set_capitulo, only: %i[ show edit update destroy ]

  # GET /capitulos or /capitulos.json
  def index
    @capitulos = Capitulo.all
  end

  # GET /capitulos/1 or /capitulos/1.json
  def show
  end

  # GET /capitulos/new
  def new
    @capitulo = Capitulo.new
  end

  # GET /capitulos/1/edit
  def edit
  end

  # POST /capitulos or /capitulos.json
  def create
    @capitulo = Capitulo.new(capitulo_params)

    respond_to do |format|
      if @capitulo.save
        format.html { redirect_to capitulo_url(@capitulo), notice: "Capitulo was successfully created." }
        format.json { render :show, status: :created, location: @capitulo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @capitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /capitulos/1 or /capitulos/1.json
  def update
    respond_to do |format|
      if @capitulo.update(capitulo_params)
        format.html { redirect_to capitulo_url(@capitulo), notice: "Capitulo was successfully updated." }
        format.json { render :show, status: :ok, location: @capitulo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @capitulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capitulos/1 or /capitulos/1.json
  def destroy
    @capitulo.destroy

    respond_to do |format|
      format.html { redirect_to capitulos_url, notice: "Capitulo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capitulo
      @capitulo = Capitulo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capitulo_params
      params.require(:capitulo).permit(:name)
    end
end
