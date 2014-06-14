class CreateNumbers < ActiveRecord::Migration
  def change
    create_table :numbers do |t|
      t.string :value
      t.boolean :right_answer

      t.timestamps
    end
  end
end
