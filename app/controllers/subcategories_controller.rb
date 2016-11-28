class SubcategoriesController < ApplicationController
	def show
	    @subcategory = Subcategory.find(params[:id])

	    respond_to do |format|
	        format.html # show.html.erb
	        format.xml { render :xml => @subcategory }
	    end
  	end
end