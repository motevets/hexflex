require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require "hexflex"

RSpec::Core::RakeTask.new(:spec)

task :default => [:color_test, :image_test, :photo_test, :spec]

TEST_FIXTURES= "spec/fixtures"

task :color_test do
  Hexflex.make_template_image(
    output_file_name: "#{TEST_FIXTURES}/color_test/color_test.png",
    side_fills: [:blue, :green, :yellow]
  )
  puts "Color test output to color_test.png."
end

task :image_test do
  Hexflex.make_template_image(
    output_file_name: "#{TEST_FIXTURES}/image_test/image_test.png",
    side_fills: [
      "#{TEST_FIXTURES}/image_test/1.png",
      "#{TEST_FIXTURES}/image_test/2.png",
      "#{TEST_FIXTURES}/image_test/3.png"
    ]
  )
  puts "Image test output to image_test.png."
end

task :photo_test do
  Hexflex.make_template_image(
    output_file_name: "#{TEST_FIXTURES}/photo_test/photo_test.png",
    side_fills: [
      "#{TEST_FIXTURES}/photo_test/1.jpg",
      "#{TEST_FIXTURES}/photo_test/2.jpg",
      "#{TEST_FIXTURES}/photo_test/3.jpg"
    ]
  )
  puts "Photo test output to photo_test.png."
end
