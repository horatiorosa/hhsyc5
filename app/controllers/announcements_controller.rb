class AnnouncementsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show, :publicannindex]
  before_action :set_announcement, only: [:show, :edit, :update, :destroy, :publicshow]

  # GET /announcements
  # GET /announcements.json
  def index
    @announcements = Announcement.all.order('created_at DESC')
  end

  # GET /announcements/1
  # GET /announcements/1.json
  def show
   @announcements = Announcement.all

  end

  def publicshow
    @announcements = Announcement.all
  end

  def publicannindex
    @announcements = Announcement.all.order('created_at DESC').paginate(page: params[:page], per_page: 2)

  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements
  # POST /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to @announcement, notice: 'Announcement was successfully created.' }
        format.json { render :show, status: :created, location: @announcement }
      else
        format.html { render :new }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end


    # if @announcement.save
    #   redirect_to @announcement
    # else
    #   render :new
    # end
  end


  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to @announcement, notice: 'Announcement was successfully updated.' }
        format.json { render :show, status: :ok, location: @announcement }
      else
        format.html { render :edit }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'Announcement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def announcement_params
      params.require(:announcement).permit(:ann_title, :ann_body, :image).merge(admin: current_admin)
    end
end
