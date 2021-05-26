class Hospital
  attr_reader :name,
              :chief_of_surgery,
              :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    salary = 0
    @doctors.each do |doc|
      salary += doc.salary
    end
    salary
  end

  def lowest_paid_doctor
    lowest_paid = doctors.min_by { |doc| doc.salary }
    lowest_paid.name
  end
end
