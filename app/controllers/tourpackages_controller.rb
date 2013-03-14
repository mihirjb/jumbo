class TourpackagesController < ApplicationController
  
  before_filter :authenticate_travelagent!, :except => [:index,:show]
  
  def index
    @tourpackage = Tourpackage.all
  end

  def new
    @tourpackage = current_travelagent.tourpackages.new(params[:tourpackage])
  end

  def show
    
    if Tourpackage.find(params[:id])
      @tourpackage = Tourpackage.find(params[:id])
    else
      @tourpackage = ""
    end

  end

  def create
     @tourpackage = current_travelagent.tourpackages.new(params[:tourpackage])
      if @tourpackage.save
        redirect_to root_path, :notice => "Tour offer Created!"
      else
        redirect_to new_tourpackages_path, :notice => "Tour creation failed!"
      end
  end
   def edit
      @tourpackage = Tourpackage.find(params[:id])
    end

    def update
      if Tourpackage.find(params[:id]).update_attributes(params[:tourpackage])
          redirect_to root_path, :notice => "tourpackage Updated!"
        else
          redirect_to new_tourpackages_path, :notice => "tourpackage updation failed!"
      end
    end

    def destroy
      Tourpackage.find(params[:id]).delete
      redirect_to root_path, :notice => "tourpackage Deleted"
    end
  end
