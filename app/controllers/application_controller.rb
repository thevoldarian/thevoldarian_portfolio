class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelistConcern ## Whitelisted form validation from Devise
  include SetSourceConcern ## Session Sources
  include CurrentUserConcern ##Sets Guest user
  include DefaultPageContentConcern ## Sets default content
  
  before_action :set_copyright
  
  def set_copyright
    @copyright = TheVoldarianViewTool::Renderer.copyright 'Raymond Beauchamp', 'All rights reserved'
  end

end

module TheVoldarianViewTool
  class Renderer
    def self.copyright name, msg  
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end