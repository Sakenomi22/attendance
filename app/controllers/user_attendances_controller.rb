class UserAttendancesController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user_attendance = UserAttendance.new
  end

  def create
    @user_attendance = UserAttendance.new(attendance_params)

    case params[:commit]
    when "出勤" ; @user_attendance.start_time = Time.now
    when "退勤" ; @user_attendance.end_time = Time.now
  end
    if @user_attendance.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def attendance_params
    params.permit(:start_time,:end_time).merge(user_id: current_user.id)
  end
end
