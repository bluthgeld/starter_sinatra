class TripsController < Sinatra::Base

  set :views , "app/views/trips"
  set :method_override, true

  get "/trips" do

    @trips = Trip.all
    erb :index

  end

  get "/trips/new" do
    erb :new
  end


  post "/trips" do
    date = params["date"]
    mileage = params["mileage"]
    pickup = params["pick_up_loc"]
    dropoff = params["drop_off_loc"]
    rider = params["rider_id"]
    scooter = params["scooter_id"]
    trip = Trip.create(date: date , mileage: mileage , pick_up_loc: pickup , drop_off_loc: dropoff , rider_id: rider , scooter_id: scooter)
    redirect "trips/#{trip.id}"
  end

  get "/trips/:id" do

    id = params[:id]
    @trip = Trip.find(id)
    erb :show

  end


  delete "/trips/:id" do
    id = params[:id]
    @trip = Trip.find(id)
    @trip.destroy
    redirect "/trips"
  end

  get "/trips/:id/edit" do
    id = params[:id]
    @trip = Trip.find(id)
    erb :edit
  end

  put "/trips/:id" do
    id = params[:id]
    @trip = Trip.find(id)
    date = params["date"]
    mileage = params["mileage"]
    pickup = params["pick_up_loc"]
    dropoff = params["drop_off_loc"]
    rider = params["rider_id"]
    scooter = params["scooter_id"]
    @trip.update(date: date , mileage: mileage , pick_up_loc: pickup , drop_off_loc: dropoff , rider_id: rider , scooter_id: scooter)
    redirect "trips/#{@trip.id}"
  end


end
