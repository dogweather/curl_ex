defmodule CurlEx do
  @moduledoc """
  A very simple Elixir wrapper for the curl command line tool.
  Currently supports only GET requests with no options.
  Just make sure you have the `curl` command line tool installed on your system.

  ## Example

  ```elixir
  iex(1)> CurlEx.get!("https://google.com")
  "<html>...</html>"
  ```
  """

  @doc """
  Get the contents of a URL using curl.
  """
  @spec get!(binary) :: binary
  def get!(url) do
    {output, 0} = System.cmd("curl", [url, "--silent"])
    output
  end
end
