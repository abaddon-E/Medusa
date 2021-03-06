class SiteController < ApplicationController

  def index
    packages = Package.all
    @counter = 0
    packages.each do |package|
      @counter += package.downloads
    end
  end

  def packages
    @packages = Package.all
  end

  def package_path
    @package = Package.find_by(urlified_name: params[:id])
  end
end
