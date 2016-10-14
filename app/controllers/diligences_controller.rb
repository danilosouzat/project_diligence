class DiligencesController < ApplicationController
  before_action :set_diligence, only: [:show, :edit, :update, :destroy]

  # GET /diligences
  # GET /diligences.json
  def index
    @diligences = Diligence.all
  end

  # GET /diligences/1
  # GET /diligences/1.json
  def show
  end

  # GET /diligences/new
  def new
    @diligence = Diligence.new
  end

  # GET /diligences/1/edit
  def edit
  end

  # POST /diligences
  # POST /diligences.json
  def create
    @diligence = Diligence.new(diligence_params)

    respond_to do |format|
      if @diligence.save
        format.html { redirect_to @diligence, notice: 'Diligence was successfully created.' }
        format.json { render :show, status: :created, location: @diligence }
      else
        format.html { render :new }
        format.json { render json: @diligence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diligences/1
  # PATCH/PUT /diligences/1.json
  def update
    respond_to do |format|
      if @diligence.update(diligence_params)
        format.html { redirect_to @diligence, notice: 'Diligence was successfully updated.' }
        format.json { render :show, status: :ok, location: @diligence }
      else
        format.html { render :edit }
        format.json { render json: @diligence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diligences/1
  # DELETE /diligences/1.json
  def destroy
    @diligence.destroy
    respond_to do |format|
      format.html { redirect_to diligences_url, notice: 'Diligence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diligence
      @diligence = Diligence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diligence_params
      params.require(:diligence).permit(:titulo, :corpo, :status, :data_inicio, :data_fim)
    end
end
