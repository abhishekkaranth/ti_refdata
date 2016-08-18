# encoding: utf-8
require 'rails_helper'

describe TiRefdata::SubRegion do
  it 'persists to the store' do
    s0 = TiRefdata::SubRegion.new code: 'AS_So'
    s0.name = 'South Asia'
    s0.name_normalized = 'south_asia'
    s0.latitude = 13.2
    s0.longitude = 80
    s0.save
    s = TiRefdata::SubRegion.find s0.id
    expect(s.code).to eq('AS_So')
    expect(s.name).to eq('South Asia')
    expect(s.name_normalized).to eq('south_asia')
    expect(s.latitude).to eq (13.2)
    expect(s.longitude).to eq(80)
  end
end
