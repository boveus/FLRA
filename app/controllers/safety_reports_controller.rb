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
    report = Employee.first.safety_reports.create
    report.task = params["task"]
    prevention_action = PreventionAction.find_by(name: params["control"])
    hazard = Hazard.find_by(name: params["hazard"])
    hazard.prevention_actions << prevention_action
    report.hazards << hazard
    redirect_to safety_report_path(report)
  end

  def show
    @report = SafetyReport.find(params[:id])
  end
end
