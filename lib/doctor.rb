class Doctor
  attr_reader :name,
              :specialty,
              :education

  def initialize(info)
    @name = info[:name]
    @specialty = info[:specialty]
    @education = info[:education]
  end
end
