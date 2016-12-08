class RenameCarrierUniqueIdToDerivedCarrierInt < ActiveRecord::Migration
  def change
    rename_column :airlines, :carrier_unique_id, :derived_carrier_int
  end
end
