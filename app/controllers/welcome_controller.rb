class WelcomeController < ApplicationController

  def index
  	@blogs = Blog.last(3)
    @announcements = Announcement.last(3)
  end

  def show
  	@blogs = Blog.all
   @announcements = Announcement.all 
  end


 
end
