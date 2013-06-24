class AddI18nFields < ActiveRecord::Migration
  def up
    rename_column :muses, :description, :description_pl
    rename_column :partners, :description, :description_pl
    rename_column :events, :description, :description_pl
    rename_column :coaches, :description, :description_pl
    add_column :muses, :description_en, :text
    add_column :coaches, :description_en, :text
    add_column :partners, :description_en, :text
    add_column :events, :description_en, :text
  end

  def down
    rename_column :muses, :description_pl, :description
    rename_column :partners, :description_pl, :description
    rename_column :events, :description_pl, :description
    rename_column :coaches, :description_pl, :description
    remove_column :muses, :description_en
    remove_column :coaches, :description_en
    remove_column :partners, :description_en
    remove_column :events, :description_en
  end
end
