class Job < ActiveRecord::Base

  validates_presence_of :company
  validates_presence_of :position
  validates_presence_of :status_id
  belongs_to :status


  def self.search(params)
    if params[:order]
      if params[:order] == "status"
         @jobs = Job.all.includes(:status).order("statuses.name #{params[:sort_order]}")
      else
        @jobs = Job.all.order("#{params[:order]} #{params[:sort_order]}")
      end
    elsif params[:search] && params[:search][:item]
      search_item = params[:search][:item].downcase
      @jobs = Job.where(
          "LOWER(company) LIKE '%#{search_item}%'
            OR LOWER(recruiter) LIKE '%#{search_item}%'
            OR LOWER(recruiter_email) LIKE '%#{search_item}%'
            OR LOWER(recruiter_phone) LIKE '%#{search_item}%'
            OR LOWER(company_website) LIKE '%#{search_item}%'
            OR LOWER(company_address) LIKE '%#{search_item}%'
            OR LOWER(company_contact) LIKE '%#{search_item}%'
            OR LOWER(company_phone) LIKE '%#{search_item}%'
            OR LOWER(position) LIKE '%#{search_item}%'
            OR LOWER(comments) LIKE '%#{search_item}%'
            "
      ).order("created_at ASC")
    else
      @jobs = Job.all.order("created_at ASC")
    end
    @jobs
  end
end
