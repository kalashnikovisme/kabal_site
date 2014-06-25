class NumberDecorator < Draper::Decorator
  delegate_all

  def has_comment?
    model.comments.any?
  end
end
