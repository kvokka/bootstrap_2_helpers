module Bootstrap2Helpers
  module Bootstrap
    module Rails
      require 'bootstrap_2_helpers/bootstrap/rails/engine' if defined?(Rails)
    end
  end
end
require 'bootstrap_2_helpers/version'
require 'bootstrap_2_helpers/bootstrap/rails/engine' if defined?(Rails)
