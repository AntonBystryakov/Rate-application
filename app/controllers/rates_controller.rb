class RatesController < ApplicationController
  def index
    @rates=Rate.all
  end
  def create
    @rate=Rate.new(rate_params)
    if @rate.save
      redirect_to rates_path
    else
      redirect_to new_rate_path
    end
  end
  def new
    @rate=Rate.new
  end
  def edit
    @rate=Rate.find(params[:id])
  end
  def show
    @rate=Rate.find(params[:id])
  end
  def update
    @rate=Rate.find(params[:id])
    if @rate.update(rate_params)
      redirect_to rates_path
    else
      redirect_to edit_rate_path
    end
  end
  def destroy
    @rate=Rate.find(params[:id]).destroy
    redirect_to rates_path
  end
  private
  def rate_params
    params.require(:rate).permit(:name, :value)
  end
end
