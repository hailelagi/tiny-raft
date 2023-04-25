defmodule TinyRaft do
  @moduledoc false

  alias TinyRaft.NodeSupervisor

  def build_cluster do
    :world
  end

  def join(name, config) do
    DynamicSupervisor.start_child(__MODULE__, {NodeSupervisor, {name, config}})
  end
end
