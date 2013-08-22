defmodule ElixirDallasWeb.Mixfile do
  use Mix.Project

  def project do
    [ app: :elixir_dallas_web,
      version: "0.0.1",
      dynamos: [ElixirDallasWeb.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/elixir_dallas_web/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { ElixirDallasWeb, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0.dev", ref: "82aa4c37c456541983e56bfc7d544b812a9b6077", github: "elixir-lang/dynamo" } ]
  end
end
