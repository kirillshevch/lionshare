module Lionshare
  class Client
    attr_reader :prices, :markets

    def initialize
      @prices = Wrapper::Prices.new
      @markets = Wrapper::Markets.new
    end
  end
end
