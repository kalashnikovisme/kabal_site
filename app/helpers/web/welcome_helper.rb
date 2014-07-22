require 'natdebt'

module Web::WelcomeHelper
  include FeaturesHelper
  def usa_debt
    "$#{Natdebt.current}"
  end
  def kabaled_usa_debt
    to_text Natdebt.current
  end
  def earth_mass
    [earth_mass_number.to_s, t('helpers.kg')].join(" ")
  end
  def kabaled_earth_mass
    to_text earth_mass_number
  end
  def distance_to_Andromeda_galaxy_in_km
    [distance_to_Andromeda_galaxy.to_s, t('helpers.km')].join(" ")
  end
  def kabaled_distance_to_Andromeda_galaxy_in_km
    to_text distance_to_Andromeda_galaxy
  end
  def seconds_at_millenium_with_sec
    [seconds_at_millenium.to_s, t('helpers.sec')].join(" ")
  end
  def kabaled_seconds_at_millenium
    to_text seconds_at_millenium
  end
end
