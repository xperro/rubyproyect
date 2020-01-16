class RegistrosController < ApplicationController
  before_action :set_registro, only: [:show, :edit, :update, :destroy]

  # GET /registros
  # GET /registros.json
  def index
      @registros = Registro.paginate(page: params[:page], per_page: 200)
    if(params[:query])
      @registros = Registro.page(params[:page], per_page: 200)
    end
  end

  # GET /registros/1
  # GET /registros/1.json
  def show
  end

  # GET /registros/new
  def new
    @registro = Registro.new

  end

  # GET /registros/1/edit
  def edit
  end




  # POST /registros
  # POST /registros.json
  def create
    @registro = Registro.new(registro_params)

    if params[:attachment]
      respond_to do |import|
        Registro.import(params[:attachment])
        flash[:notice] = "Guias importadas"
        redirect_to registros_path #=> or where you want
      end
    end



    respond_to do |format|
      @registro = Registro.new(registro_params)

      if @registro.save
        format.html { redirect_to @registro, notice: 'Guia creada exitosamente.' }
        format.json { render :show, status: :created, location: @registro }
      else
        format.html { render :new }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registros/1
  # PATCH/PUT /registros/1.json
  def update
    respond_to do |format|
      if @registro.update(registro_params)
        format.html { redirect_to @registro, notice: 'Guia actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @registro }
      else
        format.html { render :edit }
        format.json { render json: @registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registros/1
  # DELETE /registros/1.json
  def destroy
    @registro.destroy
    respond_to do |format|
      format.html { redirect_to registros_url, notice: 'Guia eliminada.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro
      @registro = Registro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_params
      params.require(:registro).permit(:guia, :ref, :estado, :fecha_salida, :promesa_de_entrega, :dias_de_retraso, :intentos_de_entrega, :nombre, :direccion, :informacion_adicional, :adicional, :ind_inter, :comentarios,:attachment)
    end



end
