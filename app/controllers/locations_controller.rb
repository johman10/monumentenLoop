class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    parsed_json = JSON.parse(location_params[:json_file].read)
    parsed_json.each do |location|
      @location = Location.new
      @location.name = location['Organizer']
      @location.street = location['Straat']
      @location.number = [location['Huisnr'], location['Letter'], location['Toev']].join(' ')
      @location.postal_code = location['Postcode']
      @location.city = location['Woonplaats']
      @location.save
    end
    redirect_to action: 'index'
  end

  private

  def location_params
    params.require(:location).permit(:json_file)
  end
end
