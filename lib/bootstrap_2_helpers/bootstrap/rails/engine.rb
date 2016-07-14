require 'rails'

require_relative 'twitter-bootstrap-breadcrumbs.rb'
require_relative '../../../../app/helpers/flash_block_helper.rb'
require_relative '../../../../app/helpers/modal_helper.rb'
require_relative '../../../../app/helpers/flash_block_helper.rb'

module Bootstrap2Helpers
  module Bootstrap
    module Rails
      class Engine < ::Rails::Engine
         initializer 'twitter-bootstrap-rails.setup_helpers' do |app|
          app.config.to_prepare do
            ActionController::Base.send :include, BreadCrumbs
            ActionController::Base.send :helper, FlashBlockHelper
            ActionController::Base.send :helper, ModalHelper
            ActionController::Base.send :helper, BootstrapFlashHelper
          end
        end
      end
    end
  end
end
