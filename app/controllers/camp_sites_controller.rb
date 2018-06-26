class CampSitesController < ApplicationController
  include CampSitesHelper
  def index
    @camp_sites = CampSite.includes(city: {region: :country}).all
  end

  def show
    @camp_site = CampSite.includes(city: {region: :country}).find(params[:id])
  end

  def create
    @camp_site = CampSite.new(camp_site_params)

    if @camp_site.save
      redirect_to camp_site_url @camp_site.id
    else
      redirect_to camp_site_new_url
    end
  end

  def new
    @cities = City.includes({region: :country}).all
  end

  def edit
    @camp_site = CampSite.find(params[:id])
    @cities = City.includes(region: :country).all
  end

  def update
    @camp_site = CampSite.find(params[:id])
    if @camp_site.update(camp_site_params)
      redirect_to camp_site_url(@camp_site.id)
    else
      redirect_to camp_site_edit_url(@camp_site.id)
    end
  end

  def delete
    @camp_site = CampSite.find(params[:id])
    @camp_site.destroy
    redirect_to camp_site_index_url
  end

  private
  def camp_site_params
    params.require(:camp_site).permit(:name, :city_id, :description, :distance, :price)
  end
end
