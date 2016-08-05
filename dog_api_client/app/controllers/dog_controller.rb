class DogController < ApplicationController
  def index
    @dogs = Unirest.get("#{ENV['API_BASE_URL']}/dog_api").body
    @dogs.sort_by! { |dog| dog["group"] }
  end

  def show
    @dog = Unirest.get("#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}.json").body
  end

  def new
  end

  def create
    @dog = Unirest.post "#{ENV['API_BASE_URL']}/dog_api",
                        headers: { "Accept" => "application/json" }, 
                        parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    redirect_to '/dog'
  end

  def edit
    @dog = Unirest.get("#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}.json").body
  end

  def update
    @dog = Unirest.get("#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}.json").body
    @dog = Unirest.patch "#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}",
                         headers: { "Accept" => "application/json" }, 
                         parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    redirect_to '/dog'
  end

  def destroy
    @dog = Unirest.get("#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}.json").body
    message = Unirest.delete "#{ENV['API_BASE_URL']}/dog_api/#{params[:id]}",
                             headers: { "Accept" => "application/json" }, 
                             parameters: { :breed => params[:input_breed], :dog_group => params[:input_group]}
    flash[:notice] = message
    redirect_to '/dog'
  end
end
