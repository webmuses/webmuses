module I18nable
  def i18n_value(attribute)
    if (s = self.send("#{attribute}_#{I18n.locale}") and s.present?) || (I18n.locale == "pl")
      s
    else
      self.send("#{attribute}_pl")
    end
  end

  def title
    i18n_value("title")
  end

  def description
    i18n_value("description")
  end

  def desc
    i18n_value("desc")
  end

  def theme
    i18n_value("theme")
  end
end
