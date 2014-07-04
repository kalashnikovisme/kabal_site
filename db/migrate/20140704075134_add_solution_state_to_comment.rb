class AddSolutionStateToComment < ActiveRecord::Migration
  def change
    add_column :comments, :solution_state, :text
  end
end
