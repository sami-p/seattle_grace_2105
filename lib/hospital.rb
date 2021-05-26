class Hospital
  attr_reader :name,
              :chief_of_surgery

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
  end
end
