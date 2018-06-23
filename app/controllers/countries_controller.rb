class CountriesController < ApplicationController
  include CountriesHelper
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def create
    @country = Country.new(country_params)

    if @country.save
      redirect_to country_url @country.id
    else
      redirect_to country_new_url
    end
  end

  def new
  end

  def edit
    @country = Country.find(params[:id])

  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      redirect_to country_url(@country.id)
    else
      redirect_to country_edit_url(@country.id)
    end
  end

  def delete
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to countries_index_path
  end

  private
    def country_params
      params.require(:country).permit(:name, :currency)
    end
end
