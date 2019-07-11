require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "activation email after registration" do
    before :each do
      @user = create(:user)
      @mail = UserMailer.activation_email(@user)
    end

    it "renders the headers" do
      expect(@mail.subject).to eq("Activate Your Account")
      expect(@mail.to).to eq([@user.email])
      expect(@mail.from).to eq(["no_reply@brownfieldofdreams.com"])
    end

    it "renders the body" do
      expect(@mail.body.encoded).to match("Visit here to activate your account.")
    end
  end
end