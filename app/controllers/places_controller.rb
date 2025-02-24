class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
  end

  def create
    new_place = Place.new
    new_place.name = params[:name]
    new_place.save
    redirect_to("/places")
  end

  def show
    @place = Place.find(params[:id])
  end
  
end
