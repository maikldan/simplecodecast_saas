class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]
    def index
        @products = Product.all
        @user = current_user
        if params[:search]
          @products = Product.search(params[:search])
        else
          @products = Product.all
        end
    end
    def show
        @products = Product.all
        @user = current_user
        # @product = Product.find(params[:id])
        if current_user
          @comment = Comment.new
          @comment.user_id = current_user.id
        end
        respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @product }
        end
    end
    def new
      @user = current_user
      @categories = Category.all.map{|c| [ c.categoria, c.id ] }
      @opsystems = Opsystem.all
        if current_user.try(:admin)
            @product = Product.new
        else
             redirect_to root_url
        end
    end
     # GET /products/1/edit
  def edit
    @user = current_user
       @categories = Category.all.map{|c| [ c.categoria, c.id ] }
  end
  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.category_id = params[:category_id] 
    @opsystems = Opsystem.all

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
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
    @product.category_id = params[:category_id]
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
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
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
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
      params.require(:product).permit(:name, :price, :image, :review, :processor, :ram_rom, :battery, :review, :display, :video, :camera, :opsystem_id, :category_id )
    end
end