class ProductEngagementController < ApplicationController
    def index
        @product_engagement = ProductEngagement.all
        if @product_engagement.key?("error")
            render json: {status: "error" , data: @product_engagement}, status: :internal_server_error
        else 
            render json: {status: "success" , data: @product_engagement}, status: :ok
        end
    end
end