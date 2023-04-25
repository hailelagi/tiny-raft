defmodule TinyRaft.Node do

  @type t :: %__MODULE__{
    state: :leader | :candidate | :follower,
    term: integer()

  }

  defstruct state: :follower, term: 0

  def new() do
    %TinyRaft.Node{}
  end

  def election_timeout() do
    t = Enum.random(300..500)

    Process.sleep(t)
  end
end
