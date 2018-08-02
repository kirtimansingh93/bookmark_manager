require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      #Add test data
      connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.google.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.facebook.com');")


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
end
