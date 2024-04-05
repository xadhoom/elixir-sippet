defmodule Sippet.Utils do
  @moduledoc false
  @default 60_000

  def get_timeout(which) do
    timeouts=Application.get_env(:sippet, :timeouts, [])
    Keyword.get(timeouts, which, @default)
  end
end
