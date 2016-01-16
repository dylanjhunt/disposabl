class IncomesController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def all
    @incomes = current_user.incomes
    @costs = current_user.costs
  end

  def show
    @incomes = current_user.incomes
  end

  def new
    @income = Income.new
  end

  def create
    @income = current_user.incomes.build(income_params)
    if @income.save
      flash[:success] = "Added"
      redirect_to '/incomes/show'
    else
      render 'incomes/new'
    end
  end

  def destroy
  @income = Income.find(params[:id])
  @income.destroy
  redirect_to :root
  end

  private

  def income_params
    params.require(:income).permit(:title, :amount)
  end
end
