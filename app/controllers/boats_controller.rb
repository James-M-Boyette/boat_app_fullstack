class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    render "index.html.erb"
  end

  def show
    @boat = Boat.find_by(id: params[:id])
    render "show.html.erb"
  end

  def create
    @boat = Boat.new(
      name: params[:name],
      price: params[:price],
      capacity: params[:capacity],
      model: params[:model],
    )
    @boat.save

    # this.$router.push(/boats/${this.$route.params.id})
    redirect_to "/boats/#{@boat.id}"
  end
end
