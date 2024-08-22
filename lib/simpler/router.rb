require_relative 'router/route'
module Simpler
  class Router

    def initialize
      @routes = []
    end

    def get(path, route_point)
      add_route(:get, path, route_point)
    end


    def post(path, route_point)
      add_route(:post, path, route_point)
    end

    def route_for(env)
      @routes[0]
    end

    private

    def add_route(method, path, route_point)
      route = Route.new(method, path, Controller)
      @routes << route
    end
  end
end
