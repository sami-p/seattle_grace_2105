require './lib/doctor'

RSpec.describe Doctor do
  describe '#initialize' do
    it 'exists' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})

      expect(meredith).to be_an_instance_of(Doctor)
    end
  end
end
