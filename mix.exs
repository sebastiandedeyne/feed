defmodule Feed.MixProject do
  use Mix.Project

  def project do
    [
      app: :feed,
      version: "0.1.0",
      elixir: "~> 1.5",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:hyper_ex, "~> 0.1"},
      {:snapshots, "~> 0.1", only: :dev}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "deps/snapshots"]
  defp elixirc_paths(_), do: ["lib"]
end
