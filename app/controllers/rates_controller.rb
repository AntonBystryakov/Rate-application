class RatesController < ApplicationController
  def index
    @rates=Rate.all
  end
  
  def edit
    @rate=Rate.find(2)
  end
  def update
    @rate=Rate.find(params[:id])
    if @rate.update(rate_params)
      redirect_to rates_path
    else
      redirect_to root
    end
  end
  private
  def rate_params
    params.require(:rate).permit(:value, :until)
  end
end
