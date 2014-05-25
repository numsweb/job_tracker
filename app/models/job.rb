class Job < ActiveRecord::Base

  validates_presence_of :company
  validates_presence_of :position
  validates_presence_of :status


  def self.search(params)
    if params[:order]
      @jobs = Job.all.order("#{params[:order]} #{params[:sort_order]}")
    elsif params[:search] && params[:search][:item]
      @jobs = Job.where(
          "company LIKE '%#{params[:search][:item]}%'
            OR recruiter LIKE '%#{params[:search][:item]}%'
            OR recruiter_email LIKE '%#{params[:search][:item]}%'
            OR recruiter_phone LIKE '%#{params[:search][:item]}%'
            OR company_website LIKE '%#{params[:search][:item]}%'
            OR company_address LIKE '%#{params[:search][:item]}%'
            OR company_contact LIKE '%#{params[:search][:item]}%'
            OR company_phone LIKE '%#{params[:search][:item]}%'
            OR position LIKE '%#{params[:search][:item]}%'
            OR comments LIKE '%#{params[:search][:item]}%'
            "
      ).order("created_at ASC")
    else
      @jobs = Job.all.order("created_at ASC")
    end
    @jobs
  end
end
