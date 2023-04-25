defmodule TinyRaft.Kv do
  @moduledoc """
    A state machine wrapper over a key-value store
    with the transitions:
    {:append, key, value}
    {:read, key}
  """
  use GenServer

  def start_link(default) when is_map(default) do
    GenServer.start_link(__MODULE__, default)
  end

  def init(state) do
    {:ok, state}
  end

  def handle_info({:append, _key, _value}, state) do
    {:noreply, state}
  end

  def handle_info({:read, _key}, state) do
    {:noreply, state}
  end
end
