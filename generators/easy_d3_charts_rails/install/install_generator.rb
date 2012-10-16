module EasyD3ChartsRails
    class InstallGenerator < Rails::Generators::Base
      desc "This generator install d3 javascripts"
      
      def install_d3charts(opts = nil)
        say_status("installing", "D3 Charts javascript", :green)
        if ::Rails::VERSION::MAJOR == 3 && ::Rails::VERSION::MINOR >= 1
          get 'https://raw.github.com/novus/nvd3/master/lib/d3.v2.min.js', 'vendor/assets/javascripts/d3.v2.min.js'
          get 'https://raw.github.com/novus/nvd3/master/nv.d3.min.js', 'vendor/assets/javascripts/nv.d3.min.js'
          
        else
          get 'https://raw.github.com/novus/nvd3/master/lib/d3.v2.min.js', 'public/javascripts/d3.v2.min.js'
          get 'https://raw.github.com/novus/nvd3/master/nv.d3.min.js','public/javascripts/nv.d3.min.js'
        end
              rescue OpenURI::HTTPError
        say_status("warning", "could not find D3 javascript file", :yellow)
      end
      
    end
end