class WelcomeController < ApplicationController
  before_action :authenticate_session!
  before_action :authenticate_model!	
  def index
  end	
  def contact
  end
end
