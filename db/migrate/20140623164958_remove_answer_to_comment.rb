class RemoveAnswerToComment < ActiveRecord::Migration
  def up
    remove_column :numbers, :right_answer
    add_column :numbers, :comment, :text
  end

  def down
  end
end
