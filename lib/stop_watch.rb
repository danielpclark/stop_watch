require "stop_watch/version"

module StopWatch
  class Timer
    def initialize
      @stamps = []
      @mark = nil
    end

    # Start & Mark time with this `mark` method.
    #
    # @return [Time, Array<Float>] First time returns Time start. From then on it returns `times` method result. @see #times
    def mark
      if @mark
        times << -(@mark - (@mark = Time.now))
      else
        @mark = Time.now
      end
    end

    # Boolean check for any times `mark`ed.  Must mark atleast twice for this to be true.
    #
    # @return [true,false]
    def time?
      !times.empty?
    end

    # Human display of total time elapsed in hours, minutes, and seconds.
    #
    # @return [String] String of hh:mm:ss
    def h # human
      "%02d:%02d:%02d" % [total/3600%24, total/60%60, total%60]
    end

    def average
      total.fdiv(times.size)
    end

    # Human representation of average seconds per `mark`.
    #
    # @return [String] String representation of average or empty for none.
    def ha
      "%0.2f second average" % average
    rescue
      ""
    end

    # A collection of times `mark`ed.  Each represented in Float of seconds since the last `mark`.
    #
    # @return [Array<Float>] Returns array of times marked.
    def times
      @stamps
    end

    # Last time `mark`ed.
    #
    # @return [Float,nil] Returns the last time `mark`ed, or else `nil`.
    def last
      @stamps.last
    end

    # Total time accumulated.
    #
    # @return [Integer,Float] Returns total time since start.
    def total
      @stamps.inject(0, :+)
    end
  end
end
