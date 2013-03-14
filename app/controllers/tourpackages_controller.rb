class TourpackagesController < ApplicationController
  
  before_filter :authenticate_travelagent!, :except => [:index,:show]
  
  def index
    @tourpackage = Tourpackage.all
  end

  def new
    @tourpackage = current_travelagent.tourpackages.new(params[:tourpackage])
  end

  def show

  end

  def create
     @tourpackage = current_travelagent.tourpackages.new(params[:toupackage])
      if @tourpackage.save
        redirect_to root_path, :notice => "Tour offer Created!"
      else
        redirect_to new_tourpackages_path, :notice => "Tour creation failed!"
      end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
