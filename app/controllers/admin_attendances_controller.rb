class AdminAttendancesController < ApplicationController
  def index
    @admins = Admin.all
  end

  def show
    @users = User.all
    @admin = Admin.find(params[:id])
    @admin_attedance = AdminAttendance.all
  end

  def new
    @admin_attedance = AdminAttendance.new
  end

  def create
    @admin_attedance = AdminAttendance.new(attendance_params)
    if @admin_attedance.save
      redirect_to admin_attendances_path
    else
      render :new
    end
  end

  private
  def attendance_params
    params.permit(:date,:regular_start,:regular_end,:regular_over).merge(admin_id: current_admin.id)
  end
end
