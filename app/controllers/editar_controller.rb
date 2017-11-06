class EditarController < ApplicationController
  def index
	    @sessions = Session.all
	    logger.debug 'Just do it'
		
  end

  def show
  	 @sessions = Session.all

  end
  def edit
  	
		
  end
end
