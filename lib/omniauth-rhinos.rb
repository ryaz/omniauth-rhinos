require 'omniauth-oauth2'
module OmniAuth
  module Strategies
    class Rhinos < OmniAuth::Strategies::OAuth2
      SITE_URL = 'http://beta.sleengshot.com'

      option :client_options, { site:  SITE_URL,
                                authorize_url: "#{SITE_URL}/authorize",
                                token_url: "#{SITE_URL}/token" }

      uid { raw_info['data']['id'] }

      info do
        { email: raw_info['data']['email'],
          first_name: raw_info['data']['firstname'],
          last_name: raw_info['data']['lastname'] }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/profile.json', parse: :json).parsed
      end
    end
  end
end
