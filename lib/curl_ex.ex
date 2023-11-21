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


  @spec get_with_user_agent!(binary, :microsoft_edge_windows) :: binary
  def get_with_user_agent!(url, :microsoft_edge_windows) do
    {output, 0} = System.cmd("curl", ["--silent", "--user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36 Edg/119.0.100.0", url])
    output
  end
end
