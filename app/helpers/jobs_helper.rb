module JobsHelper

  def set_class(job)
    Status.find(job.status).name.gsub(" ", "-").downcase
  end
end
