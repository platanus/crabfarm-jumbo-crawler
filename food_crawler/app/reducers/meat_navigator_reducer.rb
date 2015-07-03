class MeatNavigatorReducer < Crabfarm::BaseReducer

  has_field :products

  def run
    self.products = css('table#tabla_productos .modulo_producto_vertical').map do |product|
      pro = Product.new
      pro.price = product.at_css('.txt_precio_medida_h').text.gsub(/[^0-9]/, '')
      pro.unit_price = product.at_css('.txt_precio_h').text.gsub(/[^0-9]/, '')
      pro.name = product.at_css('.txt_nombre_h b')
      pro
    end
  end

end
