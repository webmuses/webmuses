class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :image
      t.string :name
      t.text :description
      t.string :url
      t.integer :position
      t.boolean :visible
      t.timestamps
    end
  end
end
