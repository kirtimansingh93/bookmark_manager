require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec("select * from bookmarks")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(options)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    return false unless is_url?(options[:url])
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{options[:url]}')")
  end

  private
  def self.is_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end

end
