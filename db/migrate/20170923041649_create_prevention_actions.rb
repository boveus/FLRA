class CreatePreventionActions < ActiveRecord::Migration[5.1]
  def change
    create_table :prevention_actions do |t|
      t.string :name
      t.string :icon_path
      t.references :hazard
    end
  end
end
