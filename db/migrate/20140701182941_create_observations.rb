class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.references :thermostat, index: true
      t.text :text
      t.references :user, index: true
      t.integer :like

      t.timestamps
    end
  end
end
