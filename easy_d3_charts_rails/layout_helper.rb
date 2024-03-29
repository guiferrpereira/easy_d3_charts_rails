# coding: utf-8

module EasyD3ChartsRails
  module LayoutHelper

    def d3_chart(placeholder, object  , &block)
      object.html_options.merge!({:id=>placeholder})
      object.options[:chart][:renderTo] = placeholder
      high_graph(placeholder,object , &block).concat(content_tag("div","", object.html_options))
    end

  #   def high_stock(placeholder, object  , &block)
  #     object.html_options.merge!({:id=>placeholder})
  #     object.options[:chart][:renderTo] = placeholder
  #     high_graph_stock(placeholder,object , &block).concat(content_tag("div","", object.html_options))
  #   end
  # 
  #   def high_graph(placeholder, object, &block)
  #     build_html_output("Chart", placeholder, object, &block)
  #   end
  # 
  #   def high_graph_stock(placeholder, object, &block)
  #     build_html_output("StockChart", placeholder, object, &block)
  #   end
  # 
  #   def build_html_output(type, placeholder, object, &block)
  #     options_collection =  [ generate_json_from_hash(object.options) ]
  #     
  #     options_collection << %|"series": #{object.data.to_json}|
  #     
  #     graph =<<-EOJS
  #     <script type="text/javascript">
  #     (function() {
  #       var onload = window.onload;
  #       window.onload = function(){
  #         if (typeof onload == "function") onload();
  #         var options, chart;
  #         options = { #{options_collection.join(',')} };
  #         #{capture(&block) if block_given?}
  #         chart = new Highcharts.#{type}(options);
  #       };
  #     })()
  #     </script>
  #     EOJS
  # 
  #     if defined?(raw)
  #       return raw(graph) 
  #     else
  #       return graph
  #     end
  # 
  #   end
  #   
  #   private
  #   
  #   def generate_json_from_hash hash  
  #     hash.each_pair.map do |key, value|
  #       k = key.to_s.camelize.gsub!(/\b\w/) { $&.downcase }
  #       if value.is_a? Hash
  #         %|"#{k}": { #{generate_json_from_hash(value)} }|
  #       else
  #         if value.respond_to?(:js_code) && value.js_code?
  #           %|"#{k}": #{value}|
  #         else
  #           %|"#{k}": #{value.to_json}|
  #         end
  #       end
  #     end.flatten.join(',')
  #   end
  #   
  end
end
