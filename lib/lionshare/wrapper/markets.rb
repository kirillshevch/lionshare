module Lionshare
  module Wrapper
    class Markets < Base
      prefix '/markets'

      def get
        wrap client.get(root_url)
      end
    end
  end
end
