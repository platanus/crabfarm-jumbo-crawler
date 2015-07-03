require 'spec_helper'

describe MeatNavigatorReducer do

  it 'should extract a list of products', reducing: 'meat' do
    expect(reducer.products.size).to be > 30
  end

  it 'should extract the data of each product', reducing: 'meat' do
    expect(reducer.products.first.name).to eq("Carne de Centolla")
    expect(reducer.products.first.unit_price).to eq("8990")
    expect(reducer.products.first.price).to eq("35960")
  end

end
