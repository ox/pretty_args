#!/usr/bin/env ruby
# coding: utf-8

# Goal:
# *    *    *    *    *  command to be executed
# ┬    ┬    ┬    ┬    ┬
# │    │    │    │    │
# │    │    │    │    │
# │    │    │    │    └───── day of week (0 - 7) (Sunday=0 or 7)
# │    │    │    └────────── month (1 - 12)
# │    │    └─────────────── day of month (1 - 31)
# │    └──────────────────── hour (0 - 23)
# └───────────────────────── min (0 - 59)

class Arg
	attr_accessor :label, :description
	def initialize lab, des
		@label = lab
		@description = des
	end

	def hl
		(@label.length / 2.0).ceil - 1
	end
end

class ArgCollection
	attr_accessor :args, :arg_length, :description_width

	def initialize *args
    @args = []
    @arg_length = 0
    @description_width = 40

		if !args.empty?
      add_args args
    end
	end

  def add label, description
    add_arg Arg.new(label, description)
  end

	def add_arg ar
		@args << ar
    @arg_length += ar.label.length + 3
	end

  def add_args args
    args.each do |a|
      add_arg a
    end
  end

	def draw
		@args.each { |arg| print arg.label + "   " }
		puts ""
		@args.each { |arg| print (" "*arg.hl), "┬", (" "*arg.hl), "   " }
		puts ""
		@args.each { |arg| print (" "*arg.hl), "│", (" "*arg.hl), "   " }
		puts ""

    r = @args.size - 1

		for u in 0..r
			i = @args.size - u - 1;
      m = ""
			for k in 0..(i-1)
				m += (" "*@args[k].hl) + "│" + (" "*@args[k].hl) + "   "
			end
			s = m + (" "*@args[i].hl)
      p = (s+ "└").ljust(@arg_length , "─")
      print p + ' '


      t = @args[i].description
      puts t.slice!(0..40)
      while !t.empty?
        puts s.ljust(@arg_length , " ") + ' ' + t.slice!(0..40)
      end
		end
	end
end


