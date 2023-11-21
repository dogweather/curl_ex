defmodule CurlExTest do
  @moduledoc false
  use ExUnit.Case

  test "get! returns the contents of an https URL" do
    assert CurlEx.get!("https://www.google.com") =~ "google"
  end

  test "get! returns the contents of an http URL" do
    assert CurlEx.get!("http://neverssl.com") =~ "NeverSSL"
  end

  test "get! returns the contents of an http URL using a custom User Agent" do
    web_page_that_checks_user_agent = "https://www.axios.com/local/portland/2023/11/20/ppb-police-body-came-explained-how-it-works"
    assert CurlEx.get!(web_page_that_checks_user_agent, user_agent: :microsoft_edge_windows) =~ "agencies can't use facial recognition software"
  end
end
