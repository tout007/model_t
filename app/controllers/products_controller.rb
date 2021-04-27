class ProductsController < ApplicationController
  
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
  end

  # GET /product/1/edit
  def edit
     @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  # GET /cookings/new
  def new
    @product = Product.new
  end

  # POST /products or /products.json
  def create
    # binding.pry
    @product = Product.new(product_params)
    if @product.save
      redirect_to @product,
      notice: "Product was successfully created"
    else
      render "new"
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :price, :discount, :description, :quantity_in_stock, :brand, :category_id, :shopkeeper_id)
    end

    def products_layout
      @current_user.special? ? "special" : "products"
    end  
  
end
  # def update
  #   respond_to do |format|
  #     if @product.update(product_params)
  #       format.html { redirect_to @product, notice: "Product was successfully updated." }
  #       format.json { render :show, status: :ok, location: @product }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @product.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

