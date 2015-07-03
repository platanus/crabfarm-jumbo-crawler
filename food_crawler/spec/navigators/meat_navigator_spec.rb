require 'spec_helper'

describe MeatNavigator do

  context 'when navigating the desktop site' do
    it 'should include meats in the list of products', navigating: 'my_memento', live: true do
      navigate section: 'carnes'
      divs = browser.table(id: 'tabla_productos').ul(class: 'grid').lis.to_a
      expect(divs.size).to be > 30
    end

    it 'should include a list of products with a given structure' do
      navigate section: 'carnes'
      li = browser.table(id: 'tabla_productos').ul(class: 'grid').lis.first
      expect(li.div(class: 'txt_nombre_h').b.text.empty?).to eq(false)
      expect(li.div(class: 'txt_precio_h').text.empty?).to eq(false)
      expect(li.div(class: 'txt_precio_medida_h').text.empty?).to eq(false)
    end
  end

end
