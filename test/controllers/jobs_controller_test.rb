require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { comments: @job.comments, company: @job.company, company_address: @job.company_address, company_contact: @job.company_contact, company_phone: @job.company_phone, company_website: @job.company_website, last_contact: @job.last_contact, position: @job.position, recruiter: @job.recruiter, recruiter_cell: @job.recruiter_cell, recruiter_email: @job.recruiter_email, recruiter_phone: @job.recruiter_phone, status: @job.status }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { comments: @job.comments, company: @job.company, company_address: @job.company_address, company_contact: @job.company_contact, company_phone: @job.company_phone, company_website: @job.company_website, last_contact: @job.last_contact, position: @job.position, recruiter: @job.recruiter, recruiter_cell: @job.recruiter_cell, recruiter_email: @job.recruiter_email, recruiter_phone: @job.recruiter_phone, status: @job.status }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
