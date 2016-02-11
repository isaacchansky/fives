Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "vlU0RvjVOzMuvYRjgf5wKEecJ", "m8SMca6uHY4DSGC3cI3sLzra32cOuJibpdGPFdXfoGaqVZWd4T"
  # TODO: move to env
end
