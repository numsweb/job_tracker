require 'spec_helper'

describe 'A useless blog', :type => :request do

  it "should at least work" do
    visit 'http://localhost:3000/jobs'
    page.should have_content('Job Tracker')
  end
end