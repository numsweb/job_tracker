require 'rubygems'
require 'rubyXL'



namespace :job do
  desc "Import Jobs spreadsheet"
  task :import => :environment do
#Thu, 27 Jun 2013 00:00:00 +0000
    def create_job(data)
      job=Job.create(
          :recruiter => data[0],
          :recruiter_email => data[1],
          #:last_contact => DateTime.strptime(data[2], '%a, %d %b %Y %H:%M:%S %z'),
          :last_contact => data[2],
          :recruiter_phone => data[3],
          :recruiter_cell => data[4],
          :company => data[5],
          :company_website => data[6],
          :company_address => data[7],
          :company_contact => data[8],
          :company_phone => data[9],
          :position => data[10],
          :comments => data[11],
          :status => 1
      )
    end



    worksheet = RubyXL::Parser.parse(Rails.root.join("JobSearch.xlsx")).worksheets[0]
    data = worksheet.extract_data
    array_size = data.size
    counter = 0
    while counter < array_size
      #puts data[counter][0].inspect unless data[counter].nil?
      unless data[counter].nil? #blank lines in spreadsheet?
        job=Job.where(recruiter: data[counter][0] )
        # puts job.inspect
        if job.blank?
          create_job(data[counter])
        end
      end
      counter += 1
    end
  end
end

