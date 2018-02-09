class Api::BalancesController < ApplicationController

  def index
    @balances = Balance.all
    render json: @balances
  end

end
