class AddLanguageToPage < ActiveRecord::Migration
  def change
    add_column :pages, :language, :text, default: "ru"
  end
end
