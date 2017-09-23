class MainController < ApplicationController
  include ChartHandler

  def reminder
  end

  def dashboard

  end

  def employee_list
    @employees = Employee.first(5)
  end

  def reports_by_task
    @reports_by_task = reports_by_task_chart
  end

  def time_of_day
    @reports_by_time_of_day = time_of_day_chart
  end
end
