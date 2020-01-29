class Doctor
  @@all =[]
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
   def appointments
   Appointment.all.select do |s| 
     s.doctor == self
   end
 end
 
 def patients
   self.appointments.collect {|s| s.patient}
 end
  
end