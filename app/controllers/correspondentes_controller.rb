class CorrespondentesController < ApplicationController
  before_action :set_correspondente, only: [:show, :edit, :update, :destroy]

  # GET /correspondentes
  # GET /correspondentes.json
  def index
    @correspondentes = Correspondente.all
  end

  # GET /correspondentes/1
  # GET /correspondentes/1.json
  def show
  end

  # GET /correspondentes/new
  def new
    @correspondente = Correspondente.new
  end

  # GET /correspondentes/1/edit
  def edit
  end

  # POST /correspondentes
  # POST /correspondentes.json
  def create
    @correspondente = Correspondente.new(correspondente_params)

    respond_to do |format|
      if @correspondente.save
        format.html { redirect_to @correspondente, notice: 'Correspondente was successfully created.' }
        format.json { render :show, status: :created, location: @correspondente }
      else
        format.html { render :new }
        format.json { render json: @correspondente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correspondentes/1
  # PATCH/PUT /correspondentes/1.json
  def update
    respond_to do |format|
      if @correspondente.update(correspondente_params)
        format.html { redirect_to @correspondente, notice: 'Correspondente was successfully updated.' }
        format.json { render :show, status: :ok, location: @correspondente }
      else
        format.html { render :edit }
        format.json { render json: @correspondente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correspondentes/1
  # DELETE /correspondentes/1.json
  def destroy
    @correspondente.destroy
    respond_to do |format|
      format.html { redirect_to correspondentes_url, notice: 'Correspondente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correspondente
      @correspondente = Correspondente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def correspondente_params
      params.require(:correspondente).permit(:nome, :cpf, :telefone, :email, :cidade, :uf, :observacao)
    end
end
