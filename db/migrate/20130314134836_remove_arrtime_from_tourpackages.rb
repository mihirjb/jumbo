class RemoveArrtimeFromTourpackages < ActiveRecord::Migration
  def up
    remove_column :tourpackages, :arrtime
  end

  def down
    add_column :tourpackages, :arrtime, :datetime
  end
end
