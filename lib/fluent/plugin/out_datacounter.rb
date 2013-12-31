class Fluent::DataCounterOutput < Fluent::BufferedOutput
 Fluent::Plugin.register_output('datacounter', self)

	# config_param :hoge, :string, :default => 'hoge'

	def initialize
		super
	  # require 'hogepos'
	end

	def configure(conf)
		super
		# @path = conf['path']
	end

	def start
		super
		# init
	end

	def shutdown
		super
		# estroy
	end

	def format(tag, time, record)
		[tag, time, record].to_msgpack
	end

def write(chunk)
		record = []
		chunk.msgpack_each do |record|
			# records << record
		end
		# write records
	end
end
