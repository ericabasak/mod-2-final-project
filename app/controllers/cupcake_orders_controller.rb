class CupcakeOrdersController < ApplicationController

  def index
    @cupcake_orders = CupcakeOrder.all
    @cupcakes = Cupcake.all
    @users = User.all
    
    @cupcake_orders = if logged_in?
      current_user.cupcake_orders
    else
      CupcakeOrder.all
    end
  end

  def new
    @cupcake_order = CupcakeOrder.new
    @cupcakes = Cupcake.all
    @users = User.all
  end

  def show
    @cupcake_order = CupcakeOrder.find(params[:id])
    @cupcakes = Cupcake.all
    @users = User.all
    @user_cupcakes_order = @cupcake_order.user.cupcake_orders
  end

  def create
    @cupcake_order = CupcakeOrder.new(cupcake_order_params)
    @user = @cupcake_order.user
      if @cupcake_order.save
        redirect_to user_cupcake_orders_path(@user)
      else
        redirect_to new_cupcake_order_path
      end
  end

  def edit
    @cupcake_order = CupcakeOrder.find(params[:id])
  end

  def update
    @cupcake_order = CupcakeOrder.find(params[:id])
    @cupcake_order.update(cupcake_order_params)
    redirect_to cupcake_order_path(@cupcake_order)
  end


  def delete
    @cupcake_order = CupcakeOrder.find(params[:id])
    @cupcake_order.destroy
    redirect_to user_cupcake_orders_path(@cupcake_order.user)
  end

private

def cupcake_order_params
  params.require(:cupcake_order).permit(:cupcake_id, :user_id, :count, :date)
end

end
