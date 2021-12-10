class ApartmentController < ApplicationController
    def index
      @apartments = Apartment.all
    end
  
    def show
      @apartment = Apartment.find(params["id"])
    end
  
    def create
      @apartments = Apartment.create(
        numero_departamento: params["numero_departamento"],
        building_id: params["building_id"],
      )
    redirect_back(fallback_location: "/")
    flash["notice"] 
  
    end
    
    def new
      @buildings = Building.all
    end
  end