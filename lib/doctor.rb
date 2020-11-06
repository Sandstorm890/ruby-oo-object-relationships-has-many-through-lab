require "pry"

class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        # binding.pry
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(date, paitent)
        new_appointment = Appointment.new(date, paitent, self)
        # binding.pry
        
    end

    def patients
        appointments.collect {|appointment| appointment.patient}
    end 




end