feature 'So that I can access my most visited sites' do
  scenario 'I would like to see a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.google.com"
    expect(page).to have_content "https://www.youtube.com"
    expect(page).to have_content "https://www.facebook.com"
  end
end
