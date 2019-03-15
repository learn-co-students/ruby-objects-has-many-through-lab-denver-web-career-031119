require 'pry'

class Appointment

  attr_accessor :date, :patient, :doctor

  APPOINTMENTS = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    APPOINTMENTS << self
  end

  def self.all
    APPOINTMENTS
  end

  def doctor
    @doctor
  end

end
