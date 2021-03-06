require 'sinatra/base'
require 'sinatra/flash'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
enable :sessions
register Sinatra::Flash
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

  get '/bookmarks/new' do
    erb(:"bookmarks/new")
  end
  post '/bookmarks' do
    # url = params['url']
    # connection = PG.connect(dbname: 'bookmark_manager_test')
    # connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    # redirect '/bookmarks'
    # if params['url'] =~ /\A#{URI::regexp(['http', 'https'])}\z/
    #   Bookmark.create(url: params['url'])
    # else
      flash[:notice] = "You must submit a valid URL." unless Bookmark.create(url: params['url'])
    # end
      redirect('/bookmarks')
  end
    run! if app_file == $0
end
