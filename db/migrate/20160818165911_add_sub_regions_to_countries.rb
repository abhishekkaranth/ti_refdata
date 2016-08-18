class AddSubRegionsToCountries < ActiveRecord::Migration
  def change
    change_table :countries do |t|
      t.references :sub_region, index:true
    end
  end
end