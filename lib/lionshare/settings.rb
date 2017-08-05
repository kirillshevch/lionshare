module Lionshare
  class Settings
    extend ::Dry::Configurable

    setting :api_url, 'https://api.lionshare.capital/api'
  end
end
