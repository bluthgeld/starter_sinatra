class RidersController < Sinatra::Base

  set :views , "app/views/riders"
  set :method_override, true

  get "/riders" do

    @riders = Rider.all
    erb :index

  end

  # get "/riders/new" do
  #
  #   erb :new
  #
  # end

  get "/riders/:id" do

    id = params[:id]
    @rider = Rider.find(id)
    erb :show
    
  end

end
