# encoding: utf-8

module TiRefdata
  class SubregionSerializer < ActiveModel::Serializer
    attributes :id, :code, :name, :latitude, :longitude

    def id
      code
    end
  end
end
