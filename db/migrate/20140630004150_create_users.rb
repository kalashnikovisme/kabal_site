class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :login
      t.text :password_digest

      t.timestamps
    end
  end
end
