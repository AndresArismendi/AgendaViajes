class WelcomeController < ApplicationController
  #before_action :authenticate_session!
  def index
  	@sessions = Session.all
  end	
  def contact
  end
end
