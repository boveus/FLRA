class CreateSafetyReports < ActiveRecord::Migration[5.1]
  def change
    create_table :safety_reports do |t|
      t.integer :employee_id
      t.string :task
      t.references :employee
    end
  end
end
