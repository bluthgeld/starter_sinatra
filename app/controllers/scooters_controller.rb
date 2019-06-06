class ScootersController < Sinatra::Base

    set :views , "app/views/scooters"
    set :method_override, true

    get "/scooters" do
      @scooters = Scooter.all
      erb :index
    end

    post "/scooters" do
      name = params["name"]
      model = params["model"]
      color = params["color"]
      inception = params["inception_date"]
      scooter = Scooter.create(name: name , model: model , color: color , inception_date: inception)
      redirect "scooters/#{scooter.id}"
    end

    get "/scooters/new" do
      erb :new
    end

    put "/scooters/:id" do
      id = params[:id]
      @scooter = Scooter.find(id)
      new_name= params["name"]
      new_model = params["model"]
      new_color = params["color"]
      new_inception = params["inception_date"]
      @scooter.update(name: new_name , model: new_model, color: new_color , inception_date: new_inception)
      redirect "scooters/#{@scooter.id}"
    end

    get "/scooters/:id" do
      id = params[:id]
      @scooter = Scooter.find(id)
      erb :show
    end

    delete "/scooters/:id" do
        id = params[:id]
        @scooter = Scooter.find(id)
        @scooter.destroy
        redirect "/scooters"
      end

      get "/scooters/:id/edit" do
        id = params[:id]
        @scooter = Scooter.find(id)
        erb :edit
      end


end
