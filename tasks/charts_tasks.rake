# desc "Explaining what the task does"
# task :lazy_highcharts do
#   # Task goes here
# end
namespace :easy_d3_charts_rails do
  desc 'Installs javascript files to the public/javascripts directory.'
  task :install do
    puts "Copying files..."
    dir = "javascripts"
    ["nv.d3.min.js"].each do |js_file|
    	dest_file = File.join(::Rails.root.to_s, "public", dir, js_file)
    	src_file = File.join(::Rails.root.to_s + "/vendor/plugins/easy_d3_charts_rails", dir, js_file)
    	FileUtils.cp_r(src_file, dest_file)
    end
    puts "Files copied - Installation complete!"
  end
  desc 'Removes the javascripts for the plugin.'
  task :remove do
    %w{nv.d3.min.js}.collect { |f|
      FileUtils.rm ::Rails.root.to_s + "/public/javascripts/" + f unless !f.nil?  }
    puts "Files removed - Finished!"
  end
end