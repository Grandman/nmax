$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nmax'
Nmax.stdin = File.open('spec/fixtures/text.txt', 'r')
