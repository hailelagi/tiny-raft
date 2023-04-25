defmodule TinyRaft.Node do

  @type t :: %__MODULE__{
    state: :leader | :candidate | :follower,
    term: integer(),
    data: map()

  }

  defstruct state: :follower, term: 0, data: %{}

  def new() do
    %TinyRaft.Node{}
  end

  def election_timeout() do
    t = Enum.random(300..500)

    Process.sleep(t)
  end

  def append_entry(node_list) do
    for node <- node_list do
      Process.send(node, {:append, 1}, [:noconnect])
    end
  end
end
