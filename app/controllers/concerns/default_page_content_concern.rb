module DefaultPageContentConcern
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults  
  end
 
  def set_page_defaults
   @page_title = "Rails test site | Main"
   @seo_keywords = "beaucham portfolio"
  end
  
end