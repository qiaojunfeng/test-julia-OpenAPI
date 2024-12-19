module ServerImpl
using HTTP
# the old version, not working
include("server/src/APIServer.jl")
# the new one, works fine
# include("server_new/src/APIServer.jl")

const server = Ref{Any}(nothing)

# The original function signature is wrong:
#   function upload_post(req::HTTP.Request, file::String)
# The following is correct
function upload_post(req::HTTP.Request, file::Vector{UInt8})
    println(String(file))
end

function download_get(req::HTTP.Request, path::String)
    read(path)
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
