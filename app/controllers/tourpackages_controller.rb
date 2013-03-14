class TourpackagesController < ApplicationController
  
  before_filter :authenticate_travelagent!, :except => [:index,:show]
  
  def index
    @tourpackage = Tourpackage.all
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
