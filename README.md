# CurlEx

Ultra-simple HTTP get. Shells out to `curl`. So it's a good idea
to install it first.


## Motivation

I got frustrated by _Unknown CA_ errors from HTTPoison and Httpc. For example,
when connecting to `http://grad.tamu.edu`.
Meanwhile, `curl` works just fine.


## Usage

```elixir
iex(1)> CurlEx.get!("https://google.com")
"<HTML>...</HTML>"
```


## Installation


```elixir
def deps do
  [
    {:curl_ex, "~> 1.0.1"}
  ]
end
```
