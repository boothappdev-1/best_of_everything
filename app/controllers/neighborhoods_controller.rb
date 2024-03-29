class NeighborhoodsController < ApplicationController
  def index
    neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[id])
  end

  def new_form
  end

  def create_row
    @neighborhood = Neighborhood.new
    @neighborhood.name = params[:the_name]
    @neighborhood.city = params[:the_city]

    @neighborhood.save

    render('show')
  end

  def edit_form
  end

  def update_row
    @neighborhood.name = params[:name]
    @neighborhood.city = params[:city]

    @neighborhood.save

    render('show')
  end

  def destroy
    @neighborhood = Neighborhood.find(params[:id])

    @neighborhood.destroy
  end
end
