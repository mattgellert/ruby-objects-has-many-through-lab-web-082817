class Patient
  attr_accessor :appointments,:patient

  def initialize(patient)
    @patient = patient
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    self.appointments << appointment
  end

  def doctors
    self.appointments.map {|appointment|
      appointment.doctor
    }
  end

end
