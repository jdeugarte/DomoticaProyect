class CreateCountryNames < ActiveRecord::Migration
  def change
    create_table :country_names do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
