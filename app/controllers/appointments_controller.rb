class AppointmentsController < ApplicationController
  before_action :set_user
  before_action :set_doctor
  

  def index
    @patients = @user.appointments.where(role: 'pacient')
    @doctors = @user.appointments.where(role: 'doctor')
  end

  def show
  end

  def new
    @users = User.all - @user.doctors
    @appointment = @user.appointments.new
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    if @appointment.save
      redirect_to user_appointments_path(@user)
    else 
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @appointment = @user.appointments.find(params[:id])
    @appointment.destroy
    redirect_to user_appointments_path(@user)
  end

  private
  
  def set_user
    @user = User.find(params[:user_id])
  end

  def set_doctor
    @Doctor = Doctor.find(params[:user_id])
  end

  def appointment_params
    params.require(:appointment).permit(:role, :user_id)
  end

end
