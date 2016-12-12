class AddVersionToAirlines < ActiveRecord::Migration
  def change
    add_column :airlines, :version, :integer
  end
end
