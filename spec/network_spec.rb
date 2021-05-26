require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe Network do
  describe '#initialize' do
    it 'exists' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn).to be_an_instance_of(Network)
    end

    it 'has a name' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn.name).to eq("Greater Seattle Medical Network")
    end

    it 'is initialized with an empty array of hospitals' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn.hospitals).to eq([])
    end
  end
end
