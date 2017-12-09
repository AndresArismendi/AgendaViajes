class WelcomeController < ApplicationController
  #before_action :authenticate_session!
  def index
  	@sessions = Session.all
  	@trips = Trip.all
    @trip_type = TripType.all
    @passengers = Passenger.all
    @guides = Session.all
    


  end	
  def contact
  end
end
