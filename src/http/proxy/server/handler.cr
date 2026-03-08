require "./context"

class HTTP::Proxy::Server::Handler
  include HTTP::Handler

  def call(context)
    request = context.request
    response = context.response
    context = Context.new(request, response)

    context.perform
  end
end
