require 'json'

class Sales 
    def self.all
        begin
            salesDataFile = File.read(Rails.root.join('db' , 'data' , 'sales.json'))
            salesData = JSON.parse(salesDataFile)
        rescue Errno::ENOENT
            { error: 'Sales data file not found' }
        rescue JSON::ParserError
            { error: 'Error is parsing json data for sales' }
        end
        salesData
    end
end