class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show,]
    load_and_authorize_resource #Cancancan

  # GET /products
  # GET /products.json
  def index
    @products = Product.where(nil) # creates an anonymous scope
    @products = Product.joins(:cultivation).where(cultivations: { id: params[:cultivation] }) if params[:cultivation].present?
    #@products = @products.brand(params[:brand]) if params[:brand].present?

    ##if params[:cultivation]
    ##@products = Product.para_o_cultivo(params[:cultivation])
    ##else
    ##@products = Product.all
    ##end
    @cycles = Cycle.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @benefits = ProductsPurposesRelation.where(product_id: @product.id)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit

  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    #permitted_columns = params[:products_purposes_relations].permit(:product_id, :purpose_id, :stars)
   # @products_purposes_relation = @product.products_purposes_relations.create(permitted_columns)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: t('create_success') }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: t('update_success') }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: t('destroy_success') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :cycle_id, :purpose_ids =>[], :products_purposes_relation_ids =>[], :cultivation_ids =>[])
    end
end
