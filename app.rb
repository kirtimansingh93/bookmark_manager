require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  # get '/' do
  #   "Hello World!"
  # end

  get '/bookmarks' do
    # bookmarks = [
    #           "https://www.google.com",
    #           "https://www.youtube.com",
    #           "https://www.facebook.com"
    #         ]
    # bookmarks.join
    @bookmarks = Bookmark.all
    erb :index
  end

  run! if app_file == $0
end
