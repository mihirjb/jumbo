class RemoveStartdateFromTourpackages < ActiveRecord::Migration
  def up
    remove_column :tourpackages, :startdate
  end

  def down
    add_column :tourpackages, :startdate, :datetime
  end
end
