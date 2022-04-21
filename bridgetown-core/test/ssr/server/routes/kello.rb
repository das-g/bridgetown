class Routes::Kello < Bridgetown::Rack::Routes
  route do |r|
    bridgetown_site.data.save_value = "VALUE"

    # route: GET /hello/:name
    r.get "kello", String do |name|
      { kello: "kriend #{name} #{@ivar}" }
    end
  end
end
