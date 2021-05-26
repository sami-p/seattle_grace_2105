require './lib/doctor'
require './lib/hospital'
require './lib/network'

RSpec.describe Network do
  describe '#initialize' do
    it 'exists' do
      gsmn = Network.new("Greater Seattle Medical Network")

      expect(gsmn).to be_an_instance_of(Network)
    end
  end
end
