Dynamo.under_test(ElixirDallasWeb.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule ElixirDallasWeb.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
