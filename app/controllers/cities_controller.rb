class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
     @city = City.new
  end

  def show
    @students = Student.where(city_id: params[:id])
  end

  def edit
      @city = City.find(params[:id])
  end

  def create
    @city = City.create(cities_params)
    if @city.save
      redirect_to @city
    else
      rende 'new'
    end
  end

  def update
    @city = City.find(params[:id])
    if @city.update(cities_params)
      redirect_to @city
    else
      render 'edit'
    end
  end 

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to city_path
  end


private
  def cities_params
    params.require(:city).permit(:name)

  end
end
