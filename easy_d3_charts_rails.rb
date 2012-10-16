require File.join(File.dirname(__FILE__), *%w[easy_d3_charts_rails core_ext string])
require File.join(File.dirname(__FILE__), *%w[easy_d3_charts_rails d3_chart])
require File.join(File.dirname(__FILE__), *%w[easy_d3_charts_rails layout_helper])
require File.join(File.dirname(__FILE__), *%w[easy_d3_charts_rails railtie]) if defined?(::Rails::Railtie)

module EasyD3ChartsRails

end