class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
