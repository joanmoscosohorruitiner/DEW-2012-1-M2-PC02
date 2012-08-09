class FlickrController < ApplicationController
  def search
    flickr = Flickr.new
    render :partial => 'photo', :collection =>
      flickr.photos(:tags => params[:tags], :per_page => '24')
  end

end
