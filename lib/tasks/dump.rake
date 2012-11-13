require 'fileutils'
require 'pry'

namespace :dump do
  desc 'Dump records collection to HTML'
  task :html do
    FileUtils.mkdir_p File.join('.', 'tmp')
    Record.each do |record|
      html = HealthDataStandards::Export::HTML.export(record)
      outfile = File.join('.', 'tmp', "#{record.last}_#{record.first}_#{Time.at(record.birthdate).strftime('%Y%m%d')}.html")
      File.open(outfile, 'w') {|f| f.write(html) }
    end
  end

  desc 'Dump records collection to C32 XML'
  task :c32 do
    FileUtils.mkdir_p File.join('.', 'tmp')
    Record.each do |record|
      xml = HealthDataStandards::Export::C32.export(record)
      outfile = File.join('.', 'tmp', "#{record.last}_#{record.first}_#{Time.at(record.birthdate).strftime('%Y%m%d')}.xml")
      File.open(outfile, 'w') {|f| f.write(xml) }
    end
  end
  
  desc 'Dump records to all formats'
  task :all => [:html, :c32]
end

