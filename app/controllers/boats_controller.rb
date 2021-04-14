class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.id
  end
end
