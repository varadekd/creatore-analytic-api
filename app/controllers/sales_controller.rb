class SalesController < ApplicationController
    def index
        @sales = Sales.all
        if @sales.key?("error")
            render json: {status: "error" , data: @sales}, status: :internal_server_error
        else 
            render json: {status: "success" , data: @sales}, status: :ok
        end
    end
end