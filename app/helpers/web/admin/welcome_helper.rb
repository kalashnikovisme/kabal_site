module Web::Admin::WelcomeHelper
  def numbers_count
    Number.count
  end

  def comments_count
    Comment.count
  end

  def pages_count
    Page.count
  end
end
