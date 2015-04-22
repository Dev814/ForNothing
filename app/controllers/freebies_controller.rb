class FreebiesController < ApplicationController

  def show
    @freebie = Freebie.find(params[:id])
  end

  def create
    # item = params[:freebie][:item]
    # date = params[:freebie][:date]
    # location = params[:freebie][:location]
    # description = params[:freebie][:description]
    # @freebie = Freebie.new(item: item, date: date, location: location, description: description)

    @freebie = Freebie.new freebie_params
    @freebie.save
    redirect_to @freebie
  end

 def new
    @freebie = Freebie.new
  end

  private
    def freebie_params
      params.require(:freebie).permit(:item, :date, :location, :description)
    end





end
