class ItemsController < ApplicationController
	def create
	    @project = Project.find(params[:project_id])
	    @item = @project.items.create(item_params)
	    redirect_to project_path(@project)
  	end

  	def new
  		@item = Item.new()
  	end

  	private
  	def item_params
  		params.require(:item).permit(:title, :description)
  	end
end
