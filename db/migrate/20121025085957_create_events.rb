class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :headline
      t.text :description
      t.string :location
      t.datetime :start_at
      t.datetime :end_at
      t.string :fb_url
      t.string :registration_url

      t.timestamps
    end
  end
end
