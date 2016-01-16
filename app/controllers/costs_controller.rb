class CostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @costs = Cost.all
  end

  def show
    @cost = Cost.find_by_id(params[:id])
  end

  def new
    @cost = Cost.new
  end

  def create
    @cost = current_user.costs.build(cost_params)
    if @cost.save
      flash[:success] = "Added"
      redirect_to '/costs'
    else
      render 'costs/new'
    end
  end

  def destroy
  @cost = Cost.find(params[:id])
  @cost.destroy
  redirect_to :root
  end

  private

  def cost_params
    params.require(:cost).permit(:title, :amount)
  end
end
