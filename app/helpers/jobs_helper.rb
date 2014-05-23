module JobsHelper

  def set_class(job)
    case Status.find(job.status).name
      when "Deactivated"
        "deactivated"
      when "Waiting Feedback"
        "waiting"
      when "New"
        "new"
      when "Submitting Info"
        "submitting"
      when "Call Screen Scheduled"
        "screen-scheduled"
      when "Interview Scheduled"
        "interview-scheduled"
      when "Dead Lead"
        "dead"
    end
  end
end
