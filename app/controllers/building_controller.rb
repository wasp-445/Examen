class BuildingController < ApplicationController
    def index
      @buildings = Building.all.order(id: :asc)
    end
  
    def show
      @building = Building.find(params["id"])
    end
  
    def new
    end
  
    def create 
       Building.create(
        
        nombre: params["building_name"],
        direccion: params["address"],
        ciudad: params["city"]
        )
        redirect_back(fallback_location: "/")
        flash["notice"]      
  
    end
  end