defmodule ElixirDallasWeb.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_dallas_web,
      version: "0.0.1",
      dynamos: [ElixirDallasWeb.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { ElixirDallasWeb, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0-dev", github: "elixir-lang/dynamo" } ]
  end
end
