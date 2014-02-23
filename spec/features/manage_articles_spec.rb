require "spec_helper"

feature "Admin can manage articles" do

  let!(:admin)    {create(:user)}

  background do
    login admin
    create(:article)
  end

  scenario "create article" do
    visit admin_articles_path
    click_on "Création article"
    click_on "Enregistrer"
    page.should have_content "erreur"
    fill_in "article_titre", with: "le titre"
    click_on "Enregistrer"
    page.should have_content(/succes/)
    page.current_path.should == admin_articles_path
  end

  scenario "edit article" do
    visit edit_admin_article_path(Article.first)
    fill_in "article_titre", with: ""
    click_on "Enregistrer"
    page.should have_content "erreur"
    fill_in "article_titre", with: "le titre"
    click_on "Enregistrer"
    page.should have_content(/succes/)
    page.current_path.should == admin_articles_path
  end

  scenario "add tags" do
    pending
  end
end
