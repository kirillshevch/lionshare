describe Lionshare::Wrapper::Prices do
  describe '#get' do
    it 'should return hash with list of prices' do
      VCR.use_cassette('prices') do
        debugger
        expect(subject.get.key?('data')).to be_truthy
      end
    end

    it 'should return hash with list of prices by period' do
      VCR.use_cassette('prices_with_period') do
        expect(subject.get(period: :hour).key?('data')).to be_truthy
      end
    end
  end
end
