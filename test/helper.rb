require 'rubygems'
require 'bundler'

begin
	Bundler.setup(:default, :development)
rescue Bundler::BundleError => e
	$stderr.puts e.message
	$stderr.puts "Run `bundle install` to install missing gems"
	exit e.status_code
end

require 'test/unit'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'fluent/test'

unless ENV.has_key?('VERBOSE')
	nulllogger = Object.new
	nulllogger.instance_eval do |obj|
		def method_missing(method, *args)
			# pass
		end
	end
	$log = nulllogger
end

require 'fluent/plugin/out_datacounter'

class Test::Unit::TestCase
end
