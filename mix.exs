defmodule App.MixProject do
  use Mix.Project

  def project do
    [
      app: :app,
      name: "elixir-github-actions",
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
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
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end

  defp description() do
    "A few sentences (a paragraph) describing the project."
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "elixir-github-actions",
      description: "elixir-github-actions",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs .gitignore mix.exs README* test),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/raphaklaus/elixir-github-actions"}
    ]
  end
end
