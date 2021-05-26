class Doctor
  attr_reader :name,
              :specialty

  def initialize(info)
    @name = info[:name]
    @specialty = info[:specialty]
  end
end
