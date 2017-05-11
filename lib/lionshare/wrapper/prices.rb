module Lionshare
  module Wrapper
    class Prices < Base
      prefix '/prices'

      def get(period: nil)
        wrap client.get(root_url + '?period=' + period.to_s)
      end
    end
  end
end
