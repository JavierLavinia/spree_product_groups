module Spree
  class Promotion::Rules::NoProduct < Promotion::Rules::Product
    def selected_products(order)
      order.products - eligible_products
    end
  end
end
