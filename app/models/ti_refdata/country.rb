# encoding: utf-8

module TiRefdata
  class Country < ActiveRecord::Base
    attr_accessible :code, :name, :name_normalized, :latitude, :longitude, :region, :page_rank

    belongs_to :continent
    has_many :cities
    belongs_to :sub_region
  end
end
