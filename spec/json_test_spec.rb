
require 'spec_helper'

describe 'JSON example tests' do

  before(:all) do
    @json = JSON.parse(File.read('json_example.json'))
  end

  it 'should have the key colour for each data object' do
     @json['colors'].each do |i|
       expect(i.keys).to include('color')
     end
  end

  it "the colour red should have the hex value of '#FF0' " do
    # iterate over objects in array 'colours'
    # find object with key colour === 'red'
    # assign that to a variable 'red'
    # expect red.hexCode === '#FF0'

    @json['colors'].each do |i|
      if i["color"] == "red"
        expect(i["code"]["hex"]).to eq("#FF0")
      end

    end

  end

  it "the colour green should have the RGBA value of '0,255,0,1' " do
    @json['colors'].each do |i|
      if i["color"] == "green"
        expect(i["code"]["rgba"]).to eq([0,255,0,1])
      end

    end
  end

end
