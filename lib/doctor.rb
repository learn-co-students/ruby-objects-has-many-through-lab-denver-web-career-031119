require 'pry'

class Doctor
  attr_accessor :name#, :appointment, :patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    # @appointment = appointment
    # @patient = patient
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    appointments.map { |appointment| appointment.patient}
  end

end
