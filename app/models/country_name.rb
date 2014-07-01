class CountryName < ActiveRecord::Base
	validates_presence_of :name,:code
	validates :code, length: {maximum: 2}
end
