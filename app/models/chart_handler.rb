module ChartHandler

  def reports_by_task_chart
    labels, data = SafetyReport.by_task
    setup_chart(labels, data, "Reports by task")
  end

  def time_of_day_chart
    labels, data = SafetyReport.by_time_of_day
    setup_chart(labels, data, "Reports by time of day")
  end

  def setup_chart(data_label, chart_data, chart_label)
    {
    labels: data_label,
    datasets: [
      {
          label: chart_label,
          backgroundColor: "rgba(63,191,89,1)",
          borderColor: "rgba(0,0,0,1)",
          data: chart_data
      },
    ]
  }
  end
end
