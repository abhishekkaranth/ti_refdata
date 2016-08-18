# encoding: utf-8

module TiRefdata
  class CountrySerializer < ActiveModel::Serializer

    attributes :id, :code, :name, :latitude, :longitude, :region
    has_one :continent
    has_one :sub_region

    def id
      code
    end
  end
end
