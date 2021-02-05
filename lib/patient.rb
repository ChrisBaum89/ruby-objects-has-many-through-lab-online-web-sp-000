require 'pry'

class Patient
  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    newapp = Appointment.new(date, self, doctor)
  end

end
