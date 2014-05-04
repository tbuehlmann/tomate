module Tomate
  require 'tomate/timer'
  require 'tomate/version'

  dir = File.dirname(File.realpath(__FILE__))
  POMODORO_PNG = File.join(dir, 'tomate', 'images', 'pomodoro.png')
end
