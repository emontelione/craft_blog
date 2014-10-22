class ImagesController < ApplicationController
	def new
		@image = Image.new
	end

	def create
		@project = Project.find(params[:project])
    	@image = @project.images.build(image_params)
	end

	private
	def image_params
		params.require(:image).permit(:filename)
	end

end