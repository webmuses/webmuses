class AddCategoryToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :category, :string, :default => 'normal'
  end
end
