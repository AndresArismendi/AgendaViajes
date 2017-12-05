class GuideTripsController < ApplicationController
  before_action :set_guide_trip, only: [:show, :edit, :update, :destroy]

  # GET /guide_trips
  # GET /guide_trips.json
  def index
    @guide_trips = GuideTrip.all
  end

  # GET /guide_trips/1
  # GET /guide_trips/1.json
  def show
  end

  # GET /guide_trips/new
  def new
    @guide_trip = GuideTrip.new
  end

  # GET /guide_trips/1/edit
  def edit
  end

  # POST /guide_trips
  # POST /guide_trips.json
  def create
    @guide_trip = GuideTrip.new(guide_trip_params)

    respond_to do |format|
      if @guide_trip.save
        format.html { redirect_to @guide_trip, notice: 'Guía turístico fue creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @guide_trip }
      else
        format.html { render :new }
        format.json { render json: @guide_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_trips/1
  # PATCH/PUT /guide_trips/1.json
  def update
    respond_to do |format|
      if @guide_trip.update(guide_trip_params)
        format.html { redirect_to @guide_trip, notice: 'Guía turístico fue modificado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @guide_trip }
      else
        format.html { render :edit }
        format.json { render json: @guide_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_trips/1
  # DELETE /guide_trips/1.json
  def destroy
    @guide_trip.destroy
    respond_to do |format|
      format.html { redirect_to guide_trips_url, notice: 'Guía turístico fue eliminado satisfactoriamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_trip
      @guide_trip = GuideTrip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_trip_params
      params.require(:guide_trip).permit(:id_guide_trip, :id_trip, :id_guide)
    end
end
