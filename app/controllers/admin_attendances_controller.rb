class AdminAttendancesController < ApplicationController
  def index
    @admins = Admin.all
  end
  def show
    @users = User.all
    @admin = Admin.find(params[:id])
  end
  def create
    @admin_attedance = AdminAttendance.new
  end
end
