class RemoveEnddateFromTourpackages < ActiveRecord::Migration
  def up
    remove_column :tourpackages, :enddate
  end

  def down
    add_column :tourpackages, :enddate, :datetime
  end
end
