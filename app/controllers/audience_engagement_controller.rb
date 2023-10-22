class AudienceEngagementController < ApplicationController
    def index
        @audience_engagement = AudienceEngagement.all
        if @audience_engagement.key?("error")
            render json: {status: "error" , data: @audience_engagement}, status: :internal_server_error
        else 
            render json: {status: "success" , data: @audience_engagement}, status: :ok
        end
    end
end