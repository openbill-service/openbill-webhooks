defmodule OpenbillWebhooks do
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      worker(OpenbillWebhooks.TransactionListener, [])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OpenbillWebhooks.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
