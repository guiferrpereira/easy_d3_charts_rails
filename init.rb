# coding: utf-8
require 'easy_d3_charts_rails'
require 'easy_d3_charts_rails/layout_helper'
ActionView::Helpers::AssetTagHelper.register_javascript_expansion :easy_d3_charts_rails => ["easy_d3_charts_rails"]
ActionView::Base.send :include, EasyD3ChartsRails::LayoutHelper