require 'spec_helper'

describe Job do

=begin
  before(:each) do
    @job = FactoryGirl.create(:job)
  end
=end

  describe "destroy" do
    it "should be destroyed" do
      @job = FactoryGirl.create(:job)
      id = @job.id
      @job.destroy
      Job.find_by_id(id).should be_nil
    end
  end

  describe Job do
    it "has a valid factory" do
      FactoryGirl.create(:job).should be_valid
    end
  end

  describe "validations" do
    it "should fail without company" do
      FactoryGirl.build(:job, company: nil).should_not be_valid
    end

    it "should fail without position"  do
      FactoryGirl.build(:job, position: nil).should_not be_valid
    end

    it "should fail without status" do
      FactoryGirl.build(:job, status: nil).should_not be_valid
    end
  end

end
