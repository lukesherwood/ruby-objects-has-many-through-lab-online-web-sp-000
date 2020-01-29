require 'pry'
class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    binding.pry
   Appointment.all.select do |s| 
     s.patient == self
   end
 end
 
 def doctors
   self.appointments.collect {|s| s.doctor}
 end
  
  
end