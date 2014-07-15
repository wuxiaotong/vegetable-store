class OrdersController < ApplicationController 
  before_action :set_order, only: [:line_items,:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def line_items
     @line_items = @order.line_items
  end
  def index
    @orders = Order.paginate page: params[:page], order: 'created_at desc',
    per_page: 10

    respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @orders }
    end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  
  end

  # GET /orders/new
  def new
    @order = Order.new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, notice: "Your cart is empty."
      return
    end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    params.permit!
    @order = Order.new(params[:order])
    # @user = User.find(session[:user_id])
    @order.user_id = session[:user_id]
    @order.province = ChinaCity.get(params[:province])
    @order.city = ChinaCity.get(params[:city])
    @order.district = ChinaCity.get(params[:district])
    @order.add_line_items_from_cart(current_cart)
    respond_to do |format|
      if @order.save
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html {redirect_to store_url, notice: 'Thank you for your order.' }
        format.json {render json: @order, status: :created, location: @order }
      else
        @cart = current_cart
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json                                                                                            
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
 
  
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      params.permit! 
      @order = Order.find(params[:id])
      @user = @order.user
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:phonenumber,:name, :address, :email, :pay_type,:province,:ciy,:district)
    end
end
