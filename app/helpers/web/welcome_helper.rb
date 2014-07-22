require 'natdebt'

module Web::WelcomeHelper
  def usa_debt
    "$#{Natdebt.current}"
  end
  def kabaled_usa_debt
    to_text Natdebt.current
  end
end
