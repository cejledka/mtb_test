class CitiesController < ApplicationController
  include CitiesHelper
  def index
    @cities = City.includes(region: :country).all.order(:id)
  end

  def show
    @city = City.includes(region: :country).find(params[:id])
  end

  def create
    @city = City.new(city_params)

    if @city.save
      redirect_to city_url @city.id
    else
      redirect_to city_new_url
    end
  end

  def new
    @regions = Region.includes(:country).all.order(:id)
  end

  def edit
    @city = City.find(params[:id])
    @regions = Region.includes(:country).all.order(:id)
  end

  def update
    @city = City.find(params[:id])
    if @city.update(city_params)
      redirect_to city_url(@city.id)
    else
      redirect_to city_edit_url(@city.id)
    end
  end

  def delete
    @city = City.find(params[:id])
    @city.destroy
    redirect_to city_index_url
  end

  private
  def city_params
    params.require(:city).permit(:name, :region_id)
  end
end
