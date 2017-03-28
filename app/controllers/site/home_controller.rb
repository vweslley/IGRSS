class Site::HomeController < SiteController

  def index
    @controls = Control.all
  end
end
