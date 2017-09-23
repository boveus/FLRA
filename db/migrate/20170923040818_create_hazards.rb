class CreateHazards < ActiveRecord::Migration[5.1]
  def change
    create_table :hazards do |t|
      t.string :name
      t.string :icon_path
      t.references :safety_report
    end
  end
end
