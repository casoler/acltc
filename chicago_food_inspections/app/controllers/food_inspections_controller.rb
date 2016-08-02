class FoodInspectionsController < ApplicationController
  def index 
    @inspections = Unirest.get("https://data.cityofchicago.org/resource/cwig-ma7x.json").body
    @inspections = @inspections.select{|inspection| inspection["results"] == 'Fail'}
  end
end
