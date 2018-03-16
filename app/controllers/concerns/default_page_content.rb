module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Pablo's Portfolio"
    @seo_keywords = "Pablo Hernandez Portfolio"
  end
end
