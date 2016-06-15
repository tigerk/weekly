class WeeklyController < ApplicationController
  unloadable


  def index
    @users = User.where( :status => 1 ).all
    
    params = {}
    params[:start_date] = Date.today.beginning_of_week.strftime('%Y-%m-%d')
    params[:end_date] = Date.today.at_end_of_week.strftime('%Y-%m-%d')

    @issues = Issue.where("due_date >= ? and due_date <= ? and (status_id = 5 or status_id = 1 or status_id = 2)", params[:start_date], params[:end_date])

    params = {}
    params[:start_date] = (Date.today.beginning_of_week - 1.weeks).strftime('%Y-%m-%d')
    params[:end_date] = (Date.today.at_end_of_week - 1.weeks).strftime('%Y-%m-%d')

    @preissues = Issue.where("due_date >= ? and due_date <= ? and status_id = 5", params[:start_date], params[:end_date])
  end
end
