module Simpler
  class Controller

    def initialize(env)
      @request = Rack::Request.new(env)
      @response = Rack::Response.new
    end

    def make_response(action)
      [
       200,
       {'content-type' => 'text/plain'},
       ["Simpler framework in action!\n"]
      ]
    end
  end
end