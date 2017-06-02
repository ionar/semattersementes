class ResalesController < ApplicationController
  before_action :set_resale, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show,]
  load_and_authorize_resource #Cancancan

  # GET /resales
  # GET /resales.json
  def index
    @resales = Resale.where(nil) # creates an anonymous scope
    @resales = Resale.where(province: params[:province]) if params[:province].present?
    #@resales = Resale.all
  end

  # GET /resales/1
  # GET /resales/1.json
  def show
  end

  # GET /resales/new
  def new
    @resale = Resale.new
  end

  # GET /resales/1/edit
  def edit
  end

  # POST /resales
  # POST /resales.json
  def create
    @resale = Resale.new(resale_params)

    respond_to do |format|
      if @resale.save
        format.html { redirect_to @resale, notice: t('create_success') }
        format.json { render :show, status: :created, location: @resale }
      else
        format.html { render :new }
        format.json { render json: @resale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resales/1
  # PATCH/PUT /resales/1.json
  def update
    respond_to do |format|
      if @resale.update(resale_params)
        format.html { redirect_to @resale, notice: t('update_success') }
        format.json { render :show, status: :ok, location: @resale }
      else
        format.html { render :edit }
        format.json { render json: @resale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resales/1
  # DELETE /resales/1.json
  def destroy
    @resale.destroy
    respond_to do |format|
      format.html { redirect_to resales_url, notice: t('delete_success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resale
      @resale = Resale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resale_params
      params.require(:resale).permit(:name, :company_name, :cnpj, :address, :neighborhood, :cep, :province, :phone, :email, :territory, :city)
    end
end
