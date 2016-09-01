module Spree
  class Promotion::Rules::NoProduct < Promotion::Rules::Product
    def eligible?(order, options = {})
      return false if selected_products(order).empty?
      if preferred_match_policy == 'all'
        selected_products(order).all? {|p| order.products.include?(p) }
      else
        order.products.any? {|p| selected_products(order).include?(p) }
      end
    end

    def selected_products(order)
      order.products - eligible_products
    end
  end
end
