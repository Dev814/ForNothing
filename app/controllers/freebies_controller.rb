class FreebiesController < ApplicationController

  def index
    @freebie = Freebie.all
  end

  def show
    @freebie = Freebie.find(params[:id])
  end

   def new
    @freebie = Freebie.new
  end

  def create


    # item = params[:freebie][:item]
    # date = params[:freebie][:date]
    # location = params[:freebie][:location]
    # description = params[:freebie][:description]
    # @freebie = Freebie.new(item: item, date: date, location: location, description: description)

    # @freebie = Freebie.new freebie_params
    @freebie = Freebie.new(freebie_params)

    respond_to do |format|
      if @freebie.save
        format.html { redirect_to freebies_path, notice: 'Freebie was successfully created.' }
        format.json { render :show, status: :created, location: @freebie }
      else
        format.html { render :new }
        format.json { render json: @freebies.errors, status: :unprocessable_entity }
      end
    end
  end

  #   @freebie.save
  #   redirect_to @freebie
  # end

  def edit
    @freebie = Freebie.find(params[:id])
  end

  def update
    @freebie = Freebie.find(params[:id])
    @freebie.update_attributes(freebie_param)
    redirect_to freebies_path
  end

  private
    def freebie_params
      params.require(:freebie).permit(:item, :date, :location, :description)
    end





end
