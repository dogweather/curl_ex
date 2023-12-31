defmodule CurlEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :curl_ex,
      version: "1.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      source_url: "https://github.com/dogweather/curl_ex",
      description: description(),
      package: [licenses: ["MIT"], links: %{"GitHub" => "https://github.com/dogweather/curl_ex"}],

      docs: [
        extras: ["README.md"],
        authors: ["Robb Shecter"],
        source_ref: "master",
      ]
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:credo,    "> 0.0.0", only: [:dev], runtime: false},
      {:dialyxir, "> 0.0.0", only: [:dev], runtime: false},
      {:ex_doc,  ">= 0.0.0", only: :dev, runtime: false},
    ]
  end

  defp description() do
    "A very simple Elixir wrapper for the curl command line tool. Currently supports only GET requests. An option allows for a custom User Agent."
  end
end
