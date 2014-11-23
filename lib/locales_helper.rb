module LocalesHelper
  def language_by_abbr(abbr)
    @languages = { ru: "Русский",
                   en: "English",
                   de: "Deutsch" }
    @languages[abbr]
  end
end
