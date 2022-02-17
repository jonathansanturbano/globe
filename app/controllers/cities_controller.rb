class CitiesController < ApplicationController
  def create
    @city = City.new(city_params)
    @country = Country.find(params[:country_id])
    @city.country = @country
    if @city.save
      redirect_to country_path(@country)
    else
      render :new
    end
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to country_path(@city.country)
  end

  private

  def city_params
    params.require(:city).permit(:name, :image_url)
  end
end
