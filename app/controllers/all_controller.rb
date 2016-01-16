class AllController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @incomes = current_user.incomes
    @costs = current_user.costs
  end
end
