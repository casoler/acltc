class WeatherController < ApplicationController

  def index
    @my_city = params[:my_city].titleize if params[:my_city]
    @my_state = params[:my_state].upcase if params[:my_state]

    if @my_city && @my_state
      @city_data = Unirest.get("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22#{@my_city}%2C%20#{@my_state}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys").body

      unless @city_data["query"]["count"] == 0
        city_data = @city_data['query']['results']['channel']
        @current_temperature = city_data['item']['condition']['temp'].to_s + city_data['units']['temperature']
        @current_stats = city_data['item']['pubDate']
        @five_day_forecast = city_data['item']['forecast'][1..5]
      else
        flash[:notice] = 'Enter a valid city and state'
      end
    else 
      flash[:notice] = 'Enter a city and state'
    end
  end



end
