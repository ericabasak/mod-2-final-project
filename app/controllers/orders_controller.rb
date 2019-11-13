class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @cupcakes = Cupcake.all
    @users = User.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      redirect_to new_order_path
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to new_order_path
  end

  private

  def order_params
    params.require(:order).permit(:date)
  end

end
