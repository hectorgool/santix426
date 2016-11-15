module ApplicationHelper
	
	#santo
	def admins_only(&block)
		block.call if current_user.try(:admin?)
	end

  #santo beta
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Tour").join(" - ")
      end
    end
  end

end
