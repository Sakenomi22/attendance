class UserAttendancesController < ApplicationController
  def index
    @users = User.all
  end
end
