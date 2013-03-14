class TravelagentsController < ApplicationController
  def index
   @tours = current_travelagent.tourpackages.find_by_travelagent_id(@current_travelagent.id)
 end
end
 