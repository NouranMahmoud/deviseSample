class ItemController < ApplicationController
  
	def index
		@item = Item.all

	end
	##########################
	def new
		@item = Item.new
		@address = Address.new
	end
	#########################
	def create
		@item = Item.new(item_params)
		@item.save
		#@address = Address.new(address_params)
		#@address.save

		@address = @item.build_address(address_params)
		@address.save
		redirect_to @item
    end
	##########################
	def show
		#params.inspect
	     @item  = Item.find(params[:id])
	     @address = Address.find(params[:id])
        
	end
	##########################

	private
	def item_params
		params.require(:item).permit(:listingtype, :price, :purpose, :area, :description, :address_id)
	end
	
	private
	def address_params
		params.require(:address).permit(:country, :city, :community, :subcommunity, :subtype)
	end
	
	
end
