class TravelagentsController < ApplicationController
  def index
   @tours = current_travelagent.tourpackages.find_all_by_travelagent_id(@current_travelagent.id)
 end
end
 