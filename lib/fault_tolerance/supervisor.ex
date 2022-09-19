defmodule FaultTolerance.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      worker(FaultTolerance.Receiver, []),
      worker(FaultTolerance.DeliveratorPool, [])
    ]

    supervise(children, strategy: :one_for_all)
  end
end
