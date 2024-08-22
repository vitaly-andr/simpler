require 'rack'

module Simpler
  class Controller

    def initialize(env)
      @request = Rack::Request.new(env)
      @response = Rack::Response.new
    end

    def make_response(action)
      [
       200,
       {'content-type' => 'text/plain',
        'x-simpler-controller' => self.class.name,
        'x-simpler-action' => action},
       ["Simpler framework in action!\n"]
      ]
    end
  end
end