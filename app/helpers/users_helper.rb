module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options={})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}"
    gravatar_url = "#{gravatar_url}?size=#{options[:size]}" if !options[:size].nil?
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
