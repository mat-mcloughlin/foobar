defmodule RocketryTest do
  use ExUnit.Case
  
  import Physics.Rocketry
  
  test "calculates escape velocity for earth" do
    assert escape_velocity(:earth) == 11.2
  end
  
end
