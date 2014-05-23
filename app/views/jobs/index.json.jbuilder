json.array!(@jobs) do |job|
  json.extract! job, :id, :company, :recruiter, :recruiter_email, :last_contact, :recruiter_phone, :recruiter_cell, :company_website, :company_address, :company_contact, :company_phone, :position, :comments, :status
  json.url job_url(job, format: :json)
end
