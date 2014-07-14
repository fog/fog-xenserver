require 'minitest/spec'
require 'minitest/autorun'
require 'simplecov'
require 'turn'
require 'coveralls'

Turn.config do |c|
  # use one of output formats:
  # :outline  - turn's original case/test outline mode [default]
  # :progress - indicates progress with progress bar
  # :dotted   - test/unit's traditional dot-progress mode
  # :pretty   - new pretty reporter
  # :marshal  - dump output as YAML (normal run mode only)
  # :cue      - interactive testing
  # c.format  = :outline
  # turn on invoke/execute tracing, enable full backtrace
  c.trace   = 20
  # use humanized test names (works only with :outline format)
  c.natural = true
end

require File.join(File.dirname(__FILE__), '../lib/fog/xenserver.rb')

SimpleCov.start do
  add_filter '/test/'
end

Coveralls.wear!