require 'json'

class AudienceEngagement 
    def self.all
        begin
            audience_engagement_data_file = File.read(Rails.root.join('db' , 'data' , 'audience.json'))
            audience_engagement_data = JSON.parse(audience_engagement_data_file)
        rescue Errno::ENOENT
            { error: 'Audience engagement data file not found' }
        rescue JSON::ParserError
            { error: 'Error is parsing json data for audience engagement' }
        end
        audience_engagement_data
    end
end