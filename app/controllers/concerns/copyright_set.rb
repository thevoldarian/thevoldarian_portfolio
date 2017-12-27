module CopyrightSet
  extend ActiveSupport::Concern
  
  def set_copyright
    @copyright = copyright 'Raymond Beauchamp', 'All rights reserved'
  end
  
  def copyright name, msg  
    "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
  end
end