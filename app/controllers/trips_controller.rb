class TripsController < Sinatra::Base

  set :views , "app/views/trips"
  set :method_override, true

  get "/trips" do

    @trips = Trip.all
    erb :index

  end

  get "/trips/:id" do

    id = params[:id]
    @trip = Trip.find(id)
    erb :show

  end

end
