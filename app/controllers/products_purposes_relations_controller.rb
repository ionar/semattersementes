class ProductsPurposesRelationsController < ApplicationController
  before_action :set_products_purposes_relation, only: [:show, :edit, :update, :destroy]

  # GET /products_purposes_relations
  # GET /products_purposes_relations.json
  def index
    @products_purposes_relations = ProductsPurposesRelation.all
  end

  # GET /products_purposes_relations/1
  # GET /products_purposes_relations/1.json
  def show
  end

  # GET /products_purposes_relations/new
  def new
    @products_purposes_relation = ProductsPurposesRelation.new
  end

  # GET /products_purposes_relations/1/edit
  def edit
  end

  # POST /products_purposes_relations
  # POST /products_purposes_relations.json
  def create
    @products_purposes_relation = ProductsPurposesRelation.new(products_purposes_relation_params)

    respond_to do |format|
      if @products_purposes_relation.save
        format.html { redirect_to @products_purposes_relation, notice: 'Products purposes relation was successfully created.' }
        format.json { render :show, status: :created, location: @products_purposes_relation }
      else
        format.html { render :new }
        format.json { render json: @products_purposes_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products_purposes_relations/1
  # PATCH/PUT /products_purposes_relations/1.json
  def update
    respond_to do |format|
      if @products_purposes_relation.update(products_purposes_relation_params)
        format.html { redirect_to @products_purposes_relation, notice: 'Products purposes relation was successfully updated.' }
        format.json { render :show, status: :ok, location: @products_purposes_relation }
      else
        format.html { render :edit }
        format.json { render json: @products_purposes_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products_purposes_relations/1
  # DELETE /products_purposes_relations/1.json
  def destroy
    @products_purposes_relation.destroy
    respond_to do |format|
      format.html { redirect_to products_purposes_relations_url, notice: 'Products purposes relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products_purposes_relation
      @products_purposes_relation = ProductsPurposesRelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def products_purposes_relation_params
      params.fetch(:products_purposes_relation, {})
      params.require(:products_purposes_relation).permit(:stars)
    end
end
