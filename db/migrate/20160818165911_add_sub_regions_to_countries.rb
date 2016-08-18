class AddSubRegionsToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :sub_region_id, :integer
  end
end