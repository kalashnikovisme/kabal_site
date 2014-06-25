class NumberDecorator < Draper::Decorator
  delegate_all

  def has_comment?
    model.comment.present?
  end
end
