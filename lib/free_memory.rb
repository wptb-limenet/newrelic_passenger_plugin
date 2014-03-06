class FreeMemory

  def initialize (output)
    # [total, Used(all), free, shared, buffers, cached, app used, app free, swap total, swap used, swap free]
    @memory_stats = output.match(/Mem:\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+).*cache:\s+(\d+)\s+(\d+).*Swap:\s+(\d+)\s+(\d+)\s+(\d+)/m)
  end

  def total_memory
    @memory_stats[1]
  end

  def used_memory
    @memory_stats[2]
  end

  def free_memory
    @memory_stats[3]
  end

  def shared_memory
    @memory_stats[4]
  end

  def buffers
    @memory_stats[5]
  end

  def cached
    @memory_stats[6]
  end

  def app_used
    @memory_stats[7]
  end

  def app_free
    @memory_stats[8]
  end

  def swap_total
    @memory_stats[9]
  end

  def swap_used
    @memory_stats[10]
  end

  def swap_free
    @memory_stats[11]
  end
end
