defmodule CurlExTest do
  @moduledoc false
  use ExUnit.Case

  test "get! returns the contents of an https URL" do
    assert CurlEx.get!("https://www.google.com") =~ "google"
  end

  test "get! returns the contents of an http URL" do
    assert CurlEx.get!("http://neverssl.com") =~ "NeverSSL"
  end
end
