require 'spec_helper'

describe 'Web page tests', :type => :request do
  status = Status.create(:name => "the status")

  valid_attributes = {position: "test position", status: status.id, company: "New Company", last_contact: "05-31-2014" }

=begin
  describe 'web page test', :type => :request do
    job = Job.create! valid_attributes

    it "should load Job page" do
      visit "http://localhost:3000/jobs/#{job.id}"
      page.should have_content('Job Tracker')
    end
    job.destroy
  end
=end


  describe 'jobs web page test' do
    it "should load Jobs page" do
      visit 'http://localhost:3000/jobs'
      page.should have_content('Job Tracker')
    end
  end

  describe 'jobs web page test JS ', :js => true do
    it "should load Jobs page" do
      visit 'http://localhost:3000/jobs'
      page.should have_content('Job Tracker')
    end
  end

  describe 'status web page test' do
    it "should load Jobs page" do
      visit 'http://localhost:3000/statuses'
      page.should have_content('Statuses')
    end
  end

  describe 'status web page test JS ', :js => true do
    it "should load Jobs page" do
      visit 'http://localhost:3000/statuses'
      page.should have_content('Statuses')
    end
  end



end
