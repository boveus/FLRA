class CreateSeverityValues < ActiveRecord::Migration[5.1]
  def change
    create_table :severity_values do |t|
      t.float :value, :numericality => {
         :greater_than_or_equal_to => 0,
         :less_than_or_equal_to => 100 }
      t.references :hazard
    end
  end
end
