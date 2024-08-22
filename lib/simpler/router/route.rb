module Simpler
  class Router
    class Route
      attr_reader :controller, :action
      def initialize(method, path, controller)
        @method = method
        @path = path
        @handler = handler
      end
    end
  end
end