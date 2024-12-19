using OpenAPI
include("client/src/APIClient.jl")

api = APIClient.DefaultApi(OpenAPI.Clients.Client("localhost:8082"))

path, io = mktemp()
write(io, "abcde")
close(io)

APIClient.upload_post(api, path)
