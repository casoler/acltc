class DogController < ApplicationController
  def index
    @dogs = Unirest.get("http://localhost:3000/api/v1/dog_api").body
    @dogs.sort_by! { |dog| dog["group"] }
  end

  def show
    @dog = Unirest.get("http://localhost:3000/api/v1/dog_api/#{params[:id]}.json").body
  end

  def new
  end

  def create
    @dog = Unirest.post "http://localhost:3000/api/v1/dog_api",
                        headers: { "Accept" => "application/json" }, 
                        parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    redirect_to '/dog'
  end

  def edit
    @dog = Unirest.get("http://localhost:3000/api/v1/dog_api/#{params[:id]}.json").body
  end

  def update
    @dog = Unirest.get("http://localhost:3000/api/v1/dog_api/#{params[:id]}.json").body
    @dog = Unirest.patch "http://localhost:3000/api/v1/dog_api/#{params[:id]}",
                         headers: { "Accept" => "application/json" }, 
                         parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    redirect_to '/dog'
  end

  def destroy
    @dog = Unirest.get("http://localhost:3000/api/v1/dog_api/#{params[:id]}.json").body
    message = Unirest.delete "http://localhost:3000/api/v1/dog_api/#{params[:id]}",
                             headers: { "Accept" => "application/json" }, 
                             parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    flash[:notice] = message
    redirect_to '/dog'
  end
end
