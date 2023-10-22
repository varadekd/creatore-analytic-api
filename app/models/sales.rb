require 'json'

class Sales 
    def self.all
        begin
            sales_data_file = File.read(Rails.root.join('db' , 'data' , 'sales.json'))
            sales_data = JSON.parse(sales_data_file)
        rescue Errno::ENOENT
            { error: 'Sales data file not found' }
        rescue JSON::ParserError
            { error: 'Error is parsing json data for sales' }
        end
        sales_data
    end
end