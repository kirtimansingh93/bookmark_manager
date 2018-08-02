feature 'So that I can access my most visited sites' do
  scenario 'A user can see a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    #Add test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'https://www.facebook.com');")

    visit('/bookmarks')
    expect(page).to have_content("https://www.google.com")
    expect(page).to have_content("https://www.youtube.com")
    expect(page).to have_content("https://www.facebook.com")
  end
end
