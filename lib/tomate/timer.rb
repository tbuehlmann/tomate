module Tomate
  class Timer
    DEFAULT_DELAY = 25*60

    def initialize(delay)
      @delay = Integer(delay || DEFAULT_DELAY)
    end

    def start
      pid = fork do
        Kernel.system('notify-send', '-i', POMODORO_PNG, 'Pomodoro', "Timer started: #{@delay} seconds.")
        sleep @delay
        Kernel.system('notify-send', '-u', 'critical', '-t', '60000', '-i',POMODORO_PNG, 'Pomodoro', 'Take a break, nerd!')
      end

      Process.detach(pid)
    end
  end
end
