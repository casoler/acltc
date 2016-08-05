class Api::V1::DogApiController < ApplicationController
  def index
    @dogs = Dog.all
    render 'index.json.jbuilder'
  end

  def create
    @dog = Dog.new(
      breed: params[:breed],
      dog_group: params[:dog_group],
      image: params[:image]
    )
    @dog.save
    render 'show.json.jbuilder'
  end

  def show
    @dog = Dog.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @dog = Dog.find_by(id: params[:id])

    @dog.breed = params[:breed] || @dog.breed
    @dog.dog_group = params[:dog_group] || @dog.dog_group
    @dog.image = params[:image] || @dog.image

    @dog.save

    render 'show.json.jbuilder'
  end

  def destroy
    dog = Dog.find_by(id: params[:id])
    dog.destroy

    render json: {message: 'Dog successfully deleted.'}
  end
end
