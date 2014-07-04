class NumberDecorator < Draper::Decorator
  delegate_all

  def has_comment?
    model.comments.any?
  end
  def unsolved_comments_count
    model.comments.select { |comment| not comment.solved? }.count
  end
end
