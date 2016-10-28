class AddColumnCarrierUniqueIdToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :carrier_unique_id, :integer
  end
end