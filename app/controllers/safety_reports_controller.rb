class SafetyReportsController < ApplicationController
  def index
    @employee = Employee.first
    @report = @employee.safety_reports.first
    @hazard = @report.hazards.first
    @severity_value = @hazard.severity_values.first
    @prevention_action = @hazard.prevention_actions.first
  end

  def new
    @safety_report = SafetyReport.new
  end

  def create
    @task = params["task"]
    @hazard = params["hazard"]
    @control = params["control"]
    @severity_value = params["safety_report"]["severity_value"].to_i
  end
end
