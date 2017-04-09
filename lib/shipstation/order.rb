module Shipstation
    class Order < ApiResource
        extend Shipstation::APIOperations::List
        extend Shipstation::APIOperations::Create
        extend Shipstation::APIOperations::Retrieve

        class << self
            def create_label params={}
                response = Shipstation.request(:post, "orders/createlabelfororder", params)
                
                return response
            end

            # params: { [:username], [:password], input: [ {:order_number, ... }, { :order_number, ... } ] }
            # todo: complete in future phase
            # def create_update_orders params 
            #     Shipstation.request(:post, "orders/createorders", params)
            # end
        end
    end
end