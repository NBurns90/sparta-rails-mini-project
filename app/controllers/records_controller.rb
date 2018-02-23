class RecordsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @records = CheckIn.find(params[:id])

  end

end
