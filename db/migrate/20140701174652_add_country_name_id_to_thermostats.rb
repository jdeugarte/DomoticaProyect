class AddCountryNameIdToThermostats < ActiveRecord::Migration
  def change
    add_reference :thermostats, :country_name, index: true
  end
end
