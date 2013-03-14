class RemoveDeptimeFromTourpackages < ActiveRecord::Migration
  def up
    remove_column :tourpackages, :deptime
  end

  def down
    add_column :tourpackages, :deptime, :datetime
  end
end
