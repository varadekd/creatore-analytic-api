require 'json'

class ProductEngagement 
    def self.all
        begin
            product_engagement_data_file = File.read(Rails.root.join('db' , 'data' , 'product.json'))
            product_engagement_data = JSON.parse(product_engagement_data_file)
        rescue Errno::ENOENT
            { error: 'Product engagement data file not found' }
        rescue JSON::ParserError
            { error: 'Error is parsing json data for product engagement' }
        end
        product_engagement_data
    end
end