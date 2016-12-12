class AddPersistentKeyToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :persistent_key, :string
  end
end
