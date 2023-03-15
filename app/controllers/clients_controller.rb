class ClientsController < ApplicationController
    def show
        client = Client.find(params[:id])
        if client
            render json: client, status: :ok
        else
            render json: {error: "Client not found"}, status: :not_found
        end
    end
end
