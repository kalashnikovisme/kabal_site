module ApplicationHelper
  include KabalHelper
  include AuthHelper
  include LocalesHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def links
    #FIXME запросы из helper
    links = []
    Page.where(navbar: :true, language: I18n.locale).each do |page|
      links << content_tag(:li, link_to(page.title, page_path(page.slug)))
    end
    links.join("")
  end

  def with_alpha_2_code(locale)
    locale == :en ? :gb : locale
  end

  def locales_languages
    locales = []
    I18n.available_locales.each do |locale|
      locales << content_tag(:li, link_to(content_tag(:span, '', class: "flag-icon flag-icon-#{with_alpha_2_code(locale)}"), "?locale=#{locale}"))
    end
    locales.join("")
  end

  def copyright_notice_year_range(start_year)
    start_year = start_year.to_i
    current_year = Time.new.year
    if current_year > start_year && start_year > 2000
      "#{start_year} - #{current_year}"
    elsif start_year > 2000
      "#{start_year}"
    else
      "#{current_year}"
    end
  end

  def site_link
    "http://kabal.herokuapp.com"
  end

  def gem_link
    "https://github.com/kalashnikovisme/kabal"
  end
end
