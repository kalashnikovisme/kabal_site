class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :value
      t.string :language
      t.boolean :right_answer

      t.timestamps
    end
  end
end
