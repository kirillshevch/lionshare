describe Lionshare::Wrapper::Markets do
  describe '#get' do
    it 'should return hash with data' do
      VCR.use_cassette('markets') do
        expect(subject.get.has_key?("data")).to be_truthy
      end
    end
  end
end
