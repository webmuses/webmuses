module MusesHelper
  def twitter_link(username)
    if username.present?
      link_to "@#{username}", "https://twitter.com/#{username}", :target => "_blank"
    end
  end
end
