class AddSlugToPage < ActiveRecord::Migration
  def change
    add_column :pages, :slug, :text
  end
end
