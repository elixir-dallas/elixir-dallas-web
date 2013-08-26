defmodule ApplicationRouter do
  use Dynamo.Router

  prepare do
    # Pick which parts of the request you want to fetch
    # You can comment the line below if you don't need
    # any of them or move them to a forwarded router
    conn.fetch([:cookies, :params])
  end

  # It is common to break your Dynamo in many
  # routers forwarding the requests between them
  # forward "/posts", to: PostsRouter

  get "/" do

    conn = conn.assign(:title, "Elixir-Dallas!")
    render conn, "home.html"
 end
  
  get "/about.html.eex" do
    conn = conn.assign(:title, "Elixir-Dallas!")  
    render conn, "about.html"
  end
end
