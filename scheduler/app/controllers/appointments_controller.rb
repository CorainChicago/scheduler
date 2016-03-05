class AppointmentsController < ApplicationController

  def new
  end

  def show
  end

  def index
    @appointments = Appointments.all
  end

  def update
  end

  def delete
  end

end
