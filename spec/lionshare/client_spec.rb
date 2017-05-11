describe Lionshare::Client do
  subject { Lionshare::Client.new }

  describe '#prices' do
    it 'should returns instance of prices wrapper' do
      expect(subject.prices).to be_instance_of(::Lionshare::Wrapper::Prices)
    end
  end

  describe '#markets' do
    it 'should returns instance of markets wrapper' do
      expect(subject.markets).to be_instance_of(::Lionshare::Wrapper::Markets)
    end
  end
end
