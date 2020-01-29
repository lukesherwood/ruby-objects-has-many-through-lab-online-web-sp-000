class Doctor
  @@all =[]
  attr_accessor :name, :doctor
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
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