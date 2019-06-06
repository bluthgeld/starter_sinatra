class RidersController < Sinatra::Base

  set :views , "app/views/riders"
  set :method_override, true

  get "/riders" do

    @riders = Rider.all
    erb :index

  end

  post "/riders" do

    firstname = params["first_name"]
    lastname = params["last_name"]
    membership = params["membership_type"]
    rider = Rider.create(first_name: firstname, last_name: lastname , membership_type: membership)
    redirect "riders/#{rider.id}"

  end

  get "/riders/new" do

    erb :new

  end

  get "/riders/:id" do

    id = params[:id]
    @rider = Rider.find(id)
    erb :show

  end

  get "/riders/:id/edit" do
    id = params[:id]
    @rider = Rider.find(id)
    erb :edit

  end

  put "/riders/:id" do
    id = params[:id]
    @rider = Rider.find(id)
    new_firstname = params["first_name"]
    new_lastname = params["last_name"]
    new_membership = params["membership_type"]
    @rider.update(first_name: new_firstname , last_name: new_lastname , membership_type: new_membership)
    redirect "riders/#{@rider.id}"
  end

  delete "/riders/:id" do
      id = params[:id]
      @rider = Rider.find(id)
      @rider.destroy
      redirect "/riders"
    end



end
