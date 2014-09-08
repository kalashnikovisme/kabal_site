require 'kabal'

module KabalHelper
  include Kabal
  def kabal_support_languages
    languages_local = []
    Kabal.supported_languages.each do |language|
      languages_local << { translation: I18n.t("languages.#{language}"), name: language }
    end
    languages_local
  end
  def kabal_returns_error?(return_value)
    not (return_value === /^[\d]+(\.[\d]+){0,1}$/)
  end
  def kabal_language_supports_fractional?(language)
    language_supports_fractional? language
  end
  def needs_round_for_language?(number)
    not kabal_language_supports_fractional?(number.language) and number.value.to_f % 1 == 0
  end
end
