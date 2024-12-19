using OpenAPI
include("client/src/APIClient.jl")

api = APIClient.DefaultApi(OpenAPI.Clients.Client("localhost:8082"))

path, io = mktemp()
write(io, "abcde")
close(io)

#= Calling this will raise error

ERROR: LoadError: MethodError: no method matching _oacinternal_upload_post(::Main.APIClient.DefaultApi, ::String; _mediaType::Nothing)
The function `_oacinternal_upload_post` exists, but no method is defined for this combination of argument types.

Closest candidates are:
  _oacinternal_upload_post(::Main.APIClient.DefaultApi, ::Vector{UInt8}; _mediaType)
   @ Main.APIClient ~/git/HPCInterface.jl/dev/openapi/client/src/apis/api_DefaultApi.jl:18
=#
APIClient.upload_post(api, path)
