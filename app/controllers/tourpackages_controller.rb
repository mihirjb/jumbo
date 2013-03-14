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
        redirect_to root_path, :notice => "Success, Tour offer Created!"
      else
        redirect_to new_tourpackage_path, :notice => "Oops, Tour creation failed!"
      end
  end
   def edit
      @tourpackage = Tourpackage.find(params[:id])
    end

    def update
      if Tourpackage.find(params[:id]).update_attributes(params[:tourpackage])
          redirect_to root_path, :notice => "Success, Tour Package Updated!"
        else
          redirect_to new_tourpackage_path, :notice => "Oops, Tour updation failed!"
      end
    end

    def destroy
      Tourpackage.find(params[:id]).delete
      redirect_to root_path, :notice => "Success, Tour package Deleted"
    end
  end
