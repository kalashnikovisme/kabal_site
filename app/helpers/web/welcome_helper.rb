require 'natdebt'

module Web::WelcomeHelper
  include FeaturesHelper
  def usa_debt
    @debt = Natdebt.current
    "$#{@debt}"
  end
  def kabaled_usa_debt
    to_text_in_language @debt, language_by_abbr(I18n.locale)
  end
  def earth_mass
    [earth_mass_number.to_s, t('helpers.kg')].join(" ")
  end
  def kabaled_earth_mass
    to_text_in_language earth_mass_number, language_by_abbr(I18n.locale)
  end
  def distance_to_Andromeda_galaxy_in_km
    [distance_to_Andromeda_galaxy.to_s, t('helpers.km')].join(" ")
  end
  def kabaled_distance_to_Andromeda_galaxy_in_km
    to_text_in_language distance_to_Andromeda_galaxy, language_by_abbr(I18n.locale)
  end
  def seconds_at_millenium_with_sec
    [seconds_at_millenium.to_s, t('helpers.sec')].join(" ")
  end
  def kabaled_seconds_at_millenium
    to_text_in_language seconds_at_millenium, language_by_abbr(I18n.locale)
  end
  def pi
    Math::PI
  end
  def kabaled_pi
    to_text_in_language pi, language_by_abbr(I18n.locale)
  end
end
