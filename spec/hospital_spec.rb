require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
  describe '#initialize' do
    it 'exists' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace).to be_an_instance_of(Hospital)
    end

    it 'has a name' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.name).to eq("Seattle Grace")
    end

    it 'has a chief of surgery' do
      meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
      alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
      seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

      expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
    end
  end
end
