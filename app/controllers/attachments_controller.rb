class AttachmentsController < ApplicationController

	def show
		attachment = Attachment.find(params[:id])
		#authorize attachment, :show?
		send_file attachment.file.path, disposition: :inline
	end

	def new
		@index = params[:index].to_i
		@tour = Tour.new
		@tour.attachments.build
		render layout: false
	end

end
