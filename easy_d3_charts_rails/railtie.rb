require 'easy_d3_charts_rails'
require 'easy_d3_charts_rails/layout_helper.rb'

require 'rails'

module EasyD3ChartsRails

    class Railtie < ::Rails::Railtie
      config.before_configuration do
        config.action_view.javascript_expansions[:easy_d3_charts_rails] = %w(easy_d3_charts_rails)
      end

      initializer 'lazy_high_charts.initialize' do
        ActiveSupport.on_load(:action_view) do
          include EasyD3ChartsRails::LayoutHelper
        end
      end
    end
    
end