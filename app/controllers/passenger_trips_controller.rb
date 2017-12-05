class PassengerTripsController < ApplicationController
  before_action :set_passenger_trip, only: [:show, :edit, :update, :destroy]

  # GET /passenger_trips
  # GET /passenger_trips.json
  def index
    @passenger_trips = PassengerTrip.all
  end

  # GET /passenger_trips/1
  # GET /passenger_trips/1.json
  def show
  end

  # GET /passenger_trips/new
  def new
    @passenger_trip = PassengerTrip.new
  end

  # GET /passenger_trips/1/edit
  def edit
  end

  # POST /passenger_trips
  # POST /passenger_trips.json
  def create
    @passenger_trip = PassengerTrip.new(passenger_trip_params)

    respond_to do |format|
      if @passenger_trip.save
        format.html { redirect_to @passenger_trip, notice: 'Passenger trip was successfully created.' }
        format.json { render :show, status: :created, location: @passenger_trip }
      else
        format.html { render :new }
        format.json { render json: @passenger_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /passenger_trips/1
  # PATCH/PUT /passenger_trips/1.json
  def update
    respond_to do |format|
      if @passenger_trip.update(passenger_trip_params)
        format.html { redirect_to @passenger_trip, notice: 'Passenger trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @passenger_trip }
      else
        format.html { render :edit }
        format.json { render json: @passenger_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passenger_trips/1
  # DELETE /passenger_trips/1.json
  def destroy
    @passenger_trip.destroy
    respond_to do |format|
      format.html { redirect_to passenger_trips_url, notice: 'Passenger trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_passenger_trip
      @passenger_trip = PassengerTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def passenger_trip_params
      params.require(:passenger_trip).permit(:id_passenger_trip, :id_passenger, :id_trip)
    end
end
