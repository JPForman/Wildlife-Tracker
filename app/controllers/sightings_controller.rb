class SightingsController < ApplicationController

  def index
    @sighting = Sighting.all
    render :index
  end

  def new
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.new
    render :new
  end

  def create
    @animal = Animal.find(params[:animal_id])
    @sighting = @animal.sightings.new(sighting_params)
    if @sighting.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    render :edit
  end

  def show
    @animal = Animal.find(params[:animal_id])
    @sighting = Sighting.find(params[:id])
    render :show
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(sighting_params)
      redirect_to animal_path(@sighting.animal)
    else
      render :edit
    end
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    redirect_to animal_path(@sighting.animal)
  end

  private
  def sighting_params
    params.require(:sighting).permit(:date, :lattitude, :longitude)
  end

end
