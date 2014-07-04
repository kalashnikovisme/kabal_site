class Web::Admin::NumberDecorator < Draper::Decorator
  delegate_all

  def unsolved_comments_count
    model.comments.select { |comment| not comment.solved? }.count
  end
end
