module ApplicationHelper
  include KabalHelper

  def links
    links = []
    Page.where(navbar: :true).each do |page|
      links << content_tag(:li, link_to(page.title, page_path(page.slug)))
    end
    links.join('\n')
  end
end
