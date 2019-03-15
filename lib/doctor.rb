require 'pry'
class Doctor

  attr_accessor :name

  DOCTORS = []

  def initialize(name)
    @name = name
    DOCTORS << self
  end


  def self.all
    DOCTORS
  end

  def new_appointment(patient, date)
    # given a name and genre, creates a new song associated with that artist
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    appointments.map {|appointment| appointment.patient}
    #songs.map(&:genre)
    #binding.pry
  end





end
