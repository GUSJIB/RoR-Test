class Api::TransactionsController < ApplicationController

  protect_from_forgery except: [:index, :top_up, :buy, :sell]

  def index
    
    transactions = Transaction.all

    render json: transactions

  end

  def top_up
    transaction = Transaction.top_up(params[:amount])

    result = "ok"
    if transaction.nil? 
      result = "failed"
    end

    render json: { result: result }

  end

  def buy

    transaction = Transaction.buy(params[:unit])

    result = "ok"
    if transaction.nil? 
      result = "failed"
    end

    render json: { result: result }


  end

  def sell

    transaction = Transaction.sell(params[:unit])

    result = "ok"
    if transaction.nil? 
      result = "failed"
    end

    render json: { result: result }

  end

end
