class ExchangesController < ApplicationController
  def index
    
  end

  def convert
    value = ExchangeService.new(params[:source_currency], params[:target_currency], params[:amount]).call
    render json: {"value": value}
  end

  def reverse
    value = ExchangeService.new(params[:target_currency], params[:source_currency], params[:amount]).call
    render json: {"value": value}
  end
end
