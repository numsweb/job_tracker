require 'spec_helper'

describe Job do

  before(:each) do
    @job = FactoryGirl.create(:job)
  end

  describe "destroy" do
    it "should be destroyed" do
      id = @job.id
      @job.destroy
      Job.find_by_id(id).should be_nil
    end
  end

end
