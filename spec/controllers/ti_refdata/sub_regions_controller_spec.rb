# encoding: utf-8
require 'rails_helper'

describe TiRefdata::SubRegionsController do

  let!(:user) { Fabricate(:user) }

  before do
    Fabricate(:sub_region, code: 'AS_So', name: 'South Asia', latitude: 10.12, longitude: 70.23)
    Fabricate(:sub_region, code: 'EU_We', name: 'West Europe', latitude:25.45, longitude: 24.34)
  end

  describe 'GET index with filter' do
    it 'returns sub_region when authenticated' do
      sign_in user
      get :index, code: 'AS_So'
      expect(response.status).to eq(200)
      expect(first_json_at '$.sub_regions').to have(1).sub_region
      expect(first_json_at '$.sub_regions[0].id').to eq(1)
      expect(first_json_at '$.sub_regions[0].code').to eq('AS_So')
      expect(first_json_at '$.sub_regions[0].name').to eq('South Asia')
      expect(first_json_at '$.sub_regions[0].latitude').to eq(10.12)
      expect(first_json_at '$.sub_regions[0].longitude').to eq(70.23)
      get :index, code: 'EU_We'
      expect(response.status).to eq(200)
      expect(first_json_at '$.sub_regions').to have(1).sub_region
      expect(first_json_at '$.sub_regions[0].id').to eq(2)
      expect(first_json_at '$.sub_regions[0].code').to eq('EU_We')
      expect(first_json_at '$.sub_regions[0].name').to eq('West Europe')
      expect(first_json_at '$.sub_regions[0].latitude').to eq(25.45)
      expect(first_json_at '$.sub_regions[0].longitude').to eq(24.34)
    end

    it 'returns an error without authentication' do
      get :index
      expect(response.status).to eq(401)
    end
  end

  describe 'GET index without filter' do
    it 'returns all sub_regions' do
      sign_in user
      get :index
      expect(response.status).to eq(200)
      expect(first_json_at '$.sub_regions').to have(2).countries
    end
  end
end
