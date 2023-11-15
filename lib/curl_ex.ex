defmodule CurlEx do
  @moduledoc """
  Documentation for `CurlEx`.
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
