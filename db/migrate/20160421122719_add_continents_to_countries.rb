class AddContinentsToCountries < ActiveRecord::Migration
  def change
    change_table :countries do |t|
      t.references :continent, index: true
    end
  end
end
