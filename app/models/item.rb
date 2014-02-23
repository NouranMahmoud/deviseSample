class Item < ActiveRecord::Base
	 has_one :address, dependent: :destroy
end
