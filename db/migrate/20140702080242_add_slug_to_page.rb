class AddSlugToPage < ActiveRecord::Migration
  def change
    add_column :pages, :slug, :text
    add_column :pages, :navbar, :boolean
  end
end
