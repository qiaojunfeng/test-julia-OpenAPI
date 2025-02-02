# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct DefaultApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `DefaultApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ DefaultApi }) = "http://localhost"

const _returntypes_download_get_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => String,
)

function _oacinternal_download_get(_api::DefaultApi, path::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_download_get_DefaultApi, "/download", [])
    OpenAPI.Clients.set_param(_ctx.query, "path", path; style="form", is_explode=true)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/octet-stream", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Download a file

Params:
- path::String (required)

Return: String, OpenAPI.Clients.ApiResponse
"""
function download_get(_api::DefaultApi, path::String; _mediaType=nothing)
    _ctx = _oacinternal_download_get(_api, path; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function download_get(_api::DefaultApi, response_stream::Channel, path::String; _mediaType=nothing)
    _ctx = _oacinternal_download_get(_api, path; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_upload_post_DefaultApi = Dict{Regex,Type}(
    Regex("^" * replace("201", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_upload_post(_api::DefaultApi, file::String; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "POST", _returntypes_upload_post_DefaultApi, "/upload", [])
    OpenAPI.Clients.set_param(_ctx.file, "file", file)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, [])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? ["multipart/form-data", ] : [_mediaType])
    return _ctx
end

@doc raw"""Upload a file

Params:
- file::String (required)

Return: Nothing, OpenAPI.Clients.ApiResponse
"""
function upload_post(_api::DefaultApi, file::String; _mediaType=nothing)
    _ctx = _oacinternal_upload_post(_api, file; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function upload_post(_api::DefaultApi, response_stream::Channel, file::String; _mediaType=nothing)
    _ctx = _oacinternal_upload_post(_api, file; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export download_get
export upload_post
