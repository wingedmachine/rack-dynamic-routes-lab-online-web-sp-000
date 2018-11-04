class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/item/)
      item = req.path.split('/').last
      if @@items.include?(item)

      else

      end
    else
      resp.status = 404
      resp.write "Route not found"
    end

    resp.finish
  end
end
