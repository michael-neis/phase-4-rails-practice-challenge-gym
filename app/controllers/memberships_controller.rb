class MembershipsController < ApplicationController

    def create
        memb = Membership.create!(mem_params)
        render json: memb, status: :created
    end


    private

    def mem_params
        params.permit(:gym_id, :client_id, :charge)
    end

end
