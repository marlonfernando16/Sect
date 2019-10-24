class InscricaosController < ApplicationController
  before_action :set_inscricao, only: [:show, :edit, :update, :destroy]

  # GET /inscricaos
  # GET /inscricaos.json
  def index
    @inscricaos = Inscricao.all
  end

  # GET /inscricaos/1
  # GET /inscricaos/1.json
  def show
  end

  # GET /inscricaos/new
  def new
    @inscricao = Inscricao.new
    @cursos = Curso.all
  end

  # GET /inscricaos/1/edit
  def edit
    @cursos = Curso.all
  end

  # POST /inscricaos
  # POST /inscricaos.json
  def create
    @inscricao = Inscricao.new(inscricao_params)

    respond_to do |format|
      if @inscricao.save
        format.html { redirect_to @inscricao, notice: 'Inscricao was successfully created.' }
        format.json { render :show, status: :created, location: @inscricao }
      else
        format.html { render :new }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inscricaos/1
  # PATCH/PUT /inscricaos/1.json
  def update
    respond_to do |format|
      if @inscricao.update(inscricao_params)
        format.html { redirect_to @inscricao, notice: 'Inscricao was successfully updated.' }
        format.json { render :show, status: :ok, location: @inscricao }
      else
        format.html { render :edit }
        format.json { render json: @inscricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscricaos/1
  # DELETE /inscricaos/1.json
  def destroy
    @inscricao.destroy
    respond_to do |format|
      format.html { redirect_to inscricaos_url, notice: 'Inscricao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscricao
      @inscricao = Inscricao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscricao_params
      params.require(:inscricao).permit(:nome, :matricula, :curso_id, :status)
    end
end
