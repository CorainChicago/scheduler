class AppointmentsController < ApplicationController

  def new
  end

  def show
    @appointment = Appointment.find()
  end

  def index
    @appointments = Appointments.all
  end

  def update
  end

  def delete
  end

  private

  def appt_params
    params.require(:appointment).permit(:tutor_id, :time, :student_id)
  end

end
