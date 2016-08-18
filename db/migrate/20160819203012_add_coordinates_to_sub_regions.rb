class AddCoordinatesToSubRegions < ActiveRecord::Migration

  def change
    add_column :sub_regions, :latitude, :float
    add_column :sub_regions, :longitude, :float
  end

end
