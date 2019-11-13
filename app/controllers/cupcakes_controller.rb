class CupcakesController < ApplicationController
  def index
    @cupcakes = Cupcake.all
  end

  def show
    @cupcake = Cupcake.find(params[:id])
  end

  def edit
    @cupcake = Cupcake.find(params[:id])
  end

  def new
    @cupcake = Cupcake.new
  end

  def create
    @cupcake = Cupcake.new(cupcake_params)

  end

  def destroy
    @cupcake = Cupcake.find(params[:id])
    @cupcake.destroy
    redirect_to cupcakes_path
  end


  private

  def cupcake_params
    params.require(:cupcake).permit(:name, :description, :price)
  end

end
