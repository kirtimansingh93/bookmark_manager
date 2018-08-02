require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Hello World!"
    redirect('/bookmarks')
  end

  get '/bookmarks' do
    # bookmarks = [
    #           "https://www.google.com",
    #           "https://www.youtube.com",
    #           "https://www.facebook.com"
    #         ]
    # bookmarks.join
    # p ENV
    @bookmarks = Bookmark.all
    erb :index
  end

  # get '/bookmarks/new' do
  #   erb(:"bookmarks/new")
  # end

  run! if app_file == $0
end
