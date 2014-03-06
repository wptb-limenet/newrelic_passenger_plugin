require File.join(File.dirname(__FILE__), 'test_helper')
require File.join(File.dirname(__FILE__), '../lib/free_memory')

class FreeMemoryTest < Test::Unit::TestCase

  def setup
    example_output_file = File.join(File.dirname(__FILE__), 'test_commands/free -m')
    @free_mem = FreeMemory.new(File.read(example_output_file))
  end


  test "total memory is parsed correctly" do
    assert_equal '750', @free_mem.total_memory
  end

  test "used memory is parsed correctly" do
    assert_equal '625', @free_mem.used_memory
  end

  test "free memory is parsed correctly" do
    assert_equal '125', @free_mem.free_memory
  end

  test "shared memory is parsed correctly" do
    assert_equal '0', @free_mem.shared_memory
  end

  test "buffers memory is parsed correctly" do
    assert_equal '35', @free_mem.buffers
  end

  test "cached memory is parsed correctly" do
    assert_equal '335', @free_mem.cached
  end

  test "used app memory is parsed correctly" do
    assert_equal '253', @free_mem.app_used
  end

  test "free app memory is parsed correctly" do
    assert_equal '496', @free_mem.app_free
  end

  test "swap total memory is parsed correctly" do
    assert_equal '956', @free_mem.swap_total
  end

  test "swap used memory is parsed correctly" do
    assert_equal '3', @free_mem.swap_used
  end

  test "swap free memory is parsed correctly" do
    assert_equal '956', @free_mem.swap_free
  end

end
