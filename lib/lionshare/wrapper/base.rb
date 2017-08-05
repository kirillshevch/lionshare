module Lionshare
  module Wrapper
    class Base
      def initialize
        @root_url = Settings.config.api_url + prefix
        @client = HTTP::Client.new(headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        })
      end

      private

      def wrap(response)
        body = response.body.to_s
        if response.status == 200
          body && !body.empty? ? JSON.parse(body) : nil
        else
          body
        end
      end

      def self.prefix(value)
        define_method :prefix do
          value
        end
      end

      attr_reader :root_url, :client
    end
  end
end
