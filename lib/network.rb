class Network
  attr_reader :name,
              :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals << hospital
  end

  def highest_paid_doctor
    each_highest = []
    @hospitals.each do |hospital|
      each_highest << hospital.doctors.max_by { |doc| doc.salary }
    end
    each_highest.max_by { |doctor| doctor.salary }
  end

  def doctors_by_hospital
    hash = Hash.new
    @hospitals.each do |hospital|
      names = []
      hospital.doctors.map do |doctor|
        names << doctor.name
      end
      hash[hospital] = names
    end
    hash
  end
end
