module ServerImpl
using HTTP
include("server/src/APIServer.jl")

const server = Ref{Any}(nothing)

function upload_post(req::HTTP.Request, body::String)
    println(typeof(body))
    println(body)
end

function run_server(port::Integer=8082)
    try
        router = HTTP.Router()
        router = APIServer.register(router, @__MODULE__)
        server[] = HTTP.serve!(router, port)
        wait(server[])
    catch ex
        @error("Server error", exception=(ex, catch_backtrace()))
    end
end

end

ServerImpl.run_server()
