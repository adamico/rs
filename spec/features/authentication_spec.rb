require "spec_helper"

feature "Users authentication" do
  given(:user) {create(:user)}
  background {login user}

  scenario "user login" do
    page.should have_content(I18n.t("devise.sessions.signed_in"))
  end

  scenario "cannot login with incorrect credentials" do
    visit logout_path
    login User.new
    page.should have_content("Identifiant ou mot de passe incorrect.")
  end
end
