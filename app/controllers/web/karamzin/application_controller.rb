class Web::Karamzin::ApplicationController < Web::Karamzin::ApplicationController
  before_filter :set_locale_to_russian

  layout 'karamzin/application'

  private

  def set_locale_to_russian
    I18n.locale = :ru
  end
end
