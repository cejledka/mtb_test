class RegionsController < ApplicationController
  include RegionsHelper
  def index
    @regions = Region.includes(:country).all.order(:id)
  end

  def show
    @region = Region.includes(:country).find(params[:id])
  end

  def create
    @region = Region.new(region_params)

    if @region.save
      redirect_to region_url @region.id
    else
      redirect_to region_new_url
    end
  end

  def new
    @countries = Country.all.order(:id)
  end

  def edit
    @region = Region.find(params[:id])
    @countries = Country.all.order(:id)
  end

  def update
    @region = Region.find(params[:id])
    if @region.update(region_params)
      redirect_to region_url(@region.id)
    else
      redirect_to region_edit_url(@region.id)
    end
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    redirect_to regions_url
  end

  private
  def region_params
    params.require(:region).permit(:name, :country_id)
  end
end
