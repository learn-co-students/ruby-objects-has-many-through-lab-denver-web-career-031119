class Patient

  attr_accessor :name, :doctor, :date

  PATIENTS = []

  def initialize(name)
    @name = name
    PATIENTS << self
  end

  def self.all
    PATIENTS
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map{|app| app.doctor}
  end

end
