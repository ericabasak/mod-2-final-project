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

  def update
    @cupcake = Cupcake.find(params[:id])
    @cupcake.update(cupcake_params)
    redirect_to cupcakes_path
  end

  def new
    @cupcake = Cupcake.new
  end

  def create
    @cupcake = Cupcake.new(cupcake_params)
    if @cupcake.save
      redirect_to cupcakes_path
    else
      render :new
    end
  end



  def destroy
    @cupcake = Cupcake.find(params[:id])
    @cupcake.destroy
    redirect_to cupcakes_path
  end


  private

  def cupcake_params
    params.require(:cupcake).permit(:name, :description, :calorie_count, :price, :image)
  end

end
