# encoding: utf-8

module TiRefdata
  class SubRegionsController < TiRefdata::ApplicationController
    ensure_signed_in

    def index
      sub_regions = 
        if params[:code]
          sub_region = SubRegion.find_by_code params[:code]
          sub_region ? [sub_region] : []
        else
          SubRegion.all
        end

      render json: sub_regions, status: (sub_regions.empty? ? 404 : 200)
    end

    def show
      sub_region = SubRegion.find_by_code params[:id]
      if sub_region
        render json: sub_region
      else
        render json: {}, status: 404
      end
    end
  end
end
