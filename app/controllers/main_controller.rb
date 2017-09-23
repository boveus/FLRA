class MainController < ApplicationController
  include ChartHandler

  def reminder
  end

  def dashboard

  end

  def reports_by_task
    @reports_by_task = SafetyReport.by_task
  end
end
