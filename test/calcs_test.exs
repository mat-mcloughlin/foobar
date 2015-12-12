defmodule CalcsTest do
  use ExUnit.Case
  
  import Calcs
  
  test "to km works" do
    assert to_km(10000) == 10
  end  

end
