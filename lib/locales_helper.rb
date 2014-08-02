module LocalesHelper
  def language_by_abbr(abbr)
    @languages = { ru: "Russian",
                   en: "English",
                   de: "Deutsch" }
    @languages[abbr]
  end
end
