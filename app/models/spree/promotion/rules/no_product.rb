module Spree
  class Promotion::Rules::NoProduct < Promotion::Rules::Product
    def eligible?(order, options = {})
      !super
    end
  end
end
