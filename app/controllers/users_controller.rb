class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show 
    @user = User.find(params[:id])
  end 

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to login_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def all_cupcake_orders
    #1. find user
    #2. get user's cupcake orders
    @user = User.find(params[:id])
    @cupcake_orders = @user.cupcake_orders
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end 

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end


end
