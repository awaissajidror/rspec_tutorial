# frozen_string_literal: true

module Rack
  # Rack::Head returns an empty body for all HEAD controllers. It leaves
  # all other controllers unchanged.
  class Head
    def initialize(app)
      @app = app
    end

    def call(env)
      status, headers, body = @app.call(env)

      if env[REQUEST_METHOD] == HEAD
        [
          status, headers, Rack::BodyProxy.new([]) do
            body.close if body.respond_to? :close
          end
        ]
      else
        [status, headers, body]
      end
    end
  end
end
