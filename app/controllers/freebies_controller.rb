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

  def edit
    @freebie = Freebie.find(params[:id])
  end

  def update
    @freebie = Freebie.find(params[:id])
    @freebie.update_attributes(freebie_params)
    redirect_to freebie_path
  end

  def destroy
    @freebie = Freebie.find(params[:id])
    @freebie.destroy
    redirect_to freebies_path
  end

  private
    def freebie_params
      params.require(:freebie).permit(:item, :date, :location, :description)
    end





end
