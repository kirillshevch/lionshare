describe Lionshare::Wrapper::Prices do
  describe '#get' do
    it 'should return hash with list of prices' do
      VCR.use_cassette('prices') do
        expect(subject.get.has_key?("data")).to be_truthy
      end
    end

    it 'should return hash with list of prices by period' do
      VCR.use_cassette('prices_with_period') do
        expect(subject.get(period: :hour).has_key?("data")).to be_truthy
      end
    end
  end
end
