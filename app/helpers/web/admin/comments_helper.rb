module Web::Admin::CommentsHelper
  def comment_solution_states
    Comment.state_machines[:solution_state].states.map &:name
  end
end
