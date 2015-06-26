class AdminsController < ApplicationController
	before_action :authenticate_admin!


  def index
  end

   def index
    @admins = Admin.all
  end

  def new
    @admin= Admin.new
  end

  def create
    # @admin = Admin.create(params.require(:admin).permit(:username, :password))
    # if @user.save
    #   redirect_to admin_path(@user), notice: 'New account created'
    #   session[:admin_id] = @admin.id
    # else
    #   flash[:alert]='There was a problem.'
    #   render :new
    # end
  end

  def show
    @admin = Admin.find(params[:id])
  end

  def destroy
  #   @admin = Admin.find(params[:id])
  #   if current_admin && current_admin?
  #     @admin.destroy
  #     respond_to do |f|
  #       f.html{ redirect_to root_path, notice: 'Deleted'}
  #       f.js 
  #     end
  #   elsif @admin== current_admin
  #       @admin.destroy
  #       session[:admin_id] = nil
  #       flash[:notice] = 'You have deleted your account!'
  #       redirect_to new_admin_path
  #   else
  #       flash[:notice] = 'you you cant do that'
  #       redirect_to new_admin_path
  # end
  end
  

  # def adminconsole
  #   @admin = Admin.all
  #   @announcements = Announcement.all
  # end
  
end
