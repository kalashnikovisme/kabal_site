require 'kabal'

module KabalHelper
  include Kabal
  def kabal_support_languages
    languages_local = []
    supported_languages.each do |language|
      languages_local << I18n.t("languages.#{language}")
    end
    languages_local
  end
end
