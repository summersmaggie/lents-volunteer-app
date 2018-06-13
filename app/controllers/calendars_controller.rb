class CalendarsController < ApplicationController

  def index
    @appointments = Appointment.all
  end
end
