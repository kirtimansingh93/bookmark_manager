require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      #Add test data
      # connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.google.com');")
      # connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com');")
      # connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.facebook.com');")
      Bookmark.create(url: "https://www.google.com")
      Bookmark.create(url: "https://www.youtube.com")
      Bookmark.create(url: "https://www.facebook.com")

      expected_bookmarks = [
                "https://www.google.com",
                "https://www.youtube.com",
                "https://www.facebook.com"
              ]
      expect(Bookmark.all).to eq expected_bookmarks
      # bookmarks = Bookmark.all
      # expect(bookmarks).to include("https://www.google.com")
      # expect(bookmarks).to include("https://www.youtube.com")
      # expect(bookmarks).to include("https://www.facebook.com")
    end
  end
  describe '.create' do
  it 'creates a new bookmark' do
    Bookmark.create(url: 'http://www.testbookmark.com')

    expect(Bookmark.all).to include 'http://www.testbookmark.com'
  end
  it 'does not create a new bookmark if the URL is not valid' do
    Bookmark.create(url: 'invalid url')

    expect(Bookmark.all).not_to include 'invalid url'
  end
 end
end
