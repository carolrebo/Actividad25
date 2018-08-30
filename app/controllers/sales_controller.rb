class SalesController < ApplicationController
  def new
  	@sales=Sale.new
  end

 def create
 	@sale=Sale.new(sale_params)
 	if @sale.tax == false
 		
 	else

 	end
 	@sale.save
 	redict_to sales_done_path
  end

  private

  def sale_params
  	params.require(:sale).permit(:cod,:details,:category,:value,:discount,:tax)
  end

end
