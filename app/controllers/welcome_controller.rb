class WelcomeController < ApplicationController

  def index
  	
    @announcements = Announcement.all
  end

  def show
  	
   @announcements = Announcement.all 
  end


 
end
