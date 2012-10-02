module ApplicationHelper

  def set_title(cms_page)
    cms_page ? cms_page.label.humanize : "Poznaj Nas :)"
  end
end
