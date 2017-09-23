class SafetyReport < ApplicationRecord
  belongs_to :employee
  has_many :hazards

  def self.by_task
    format_for_chart(
    group(:task)
    .order("count(task) DESC")
    .count
    )
  end

  def self.by_time_of_day
    format_for_chart(
    group("date_part('hour', created_at)")
    .count(:id)
    .sort)
  end

  def self.format_for_chart(data_table)
    labels = []
    data = []
    data_table.each do |nested_array|
      labels << nested_array[0]
      data << nested_array[1]
    end
    return labels, data
  end
end
