class SafetyReportController < ApplicationController
  def index
    @employee = Employee.first
    @report = @employee.safety_reports.first
    @hazard = @report.hazards.first
    @severity_value = @hazard.severity_values.first
    @prevention_action = @hazard.prevention_actions.first
  end

  def new

  end
  
  def create
    @safety_report = SafetyReport.new
  end
end
