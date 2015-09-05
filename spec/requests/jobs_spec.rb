require 'spec_helper'


=begin
describe "Jobs" do
  describe "GET /jobs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      login_user(user)
      get jobs_path
      response.status.should be(200)
    end
  end
end
=end