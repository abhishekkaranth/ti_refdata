class CreateSubRegions < ActiveRecord::Migration
  def change
    create_table :sub_regions do |t|
      t.string :code, null: false
      t.string :name, null: true
      t.string :name_normalized, null: true
      t.float :page_rank, default: 0.0
    end
  end
end
