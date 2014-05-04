module Tomate
  class Timer
    DEFAULT_DELAY = 25*60

    def initialize(delay)
      @delay = Integer(delay || DEFAULT_DELAY)
    end

    def start
      fork_only!

      fork do
        system('notify-send', '-i', 'Pomodoro', "Timer started: #{@delay} seconds.")
        sleep @delay
        system('notify-send', '-u', 'critical', '-t', '60000', '-i', 'Pomodoro', 'Take a break, nerd!')
      end
    end

    private

    def fork_only!
      fail 'Your operating system does not support forking.' unless Process.respond_to?(:fork)
    end
  end
end
