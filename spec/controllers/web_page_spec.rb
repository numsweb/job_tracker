require 'spec_helper'

describe 'Web page tests', :type => :request do
  status = Status.create(:name => "the status")

  valid_attributes = {position: "test position", status: status.id, company: "New Company", last_contact: "05-31-2014" }
  valid_status_attributes = {name: "test status"}

  describe 'jobs web page test' do
    it "should load Jobs page" do
      visit 'http://localhost:3000/jobs'
      page.should have_content('Job Tracker')
    end

    it 'should load Jobs/:id page' do
      job=Job.create(valid_attributes)
      visit 'http://localhost:3000/jobs/' + job.id.to_s
      page.should have_content('New Company')
    end

    it 'should load Jobs/new page' do
      visit 'http://localhost:3000/jobs/new'
      page.should have_content('New job')
    end
  end

  describe 'statuses web pages test' do
    it "should load Statuses page" do
      visit 'http://localhost:3000/statuses'
      page.should have_content('Statuses')
    end

    it 'should load statuses/:id page' do
      status=Status.create(valid_status_attributes)
      visit 'http://localhost:3000/statuses/' + status.id.to_s
      page.should have_content('test status')
    end

    it 'should load statuses/new page' do
      visit 'http://localhost:3000/statuses/new'
      page.should have_content('New status')
    end
  end

  describe 'jobs web page test JS ', :js => true do
    it "should load Jobs page" do
      visit 'http://localhost:3000/jobs'
      page.should have_content('Job Tracker')
    end

    it "should load Statuses page" do
      visit 'http://localhost:3000/statuses'
      page.should have_content('Statuses')
    end

  end






end
