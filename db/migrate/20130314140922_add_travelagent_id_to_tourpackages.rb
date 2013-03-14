class AddTravelagentIdToTourpackages < ActiveRecord::Migration
  def change
    add_column :tourpackages, :travelagent_id, :integer
  end
end
