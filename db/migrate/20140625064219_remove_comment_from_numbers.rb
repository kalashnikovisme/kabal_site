class RemoveCommentFromNumbers < ActiveRecord::Migration
  def up
    remove_column :numbers, :comment
  end

  def down
  end
end
