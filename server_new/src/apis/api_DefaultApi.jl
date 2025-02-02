# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


function download_get_read(handler)
    function download_get_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        query_params = HTTP.queryparams(URIs.URI(req.target))
        openapi_params["path"] = OpenAPI.Servers.to_param(String, query_params, "path", required=true, style="form", is_explode=true)
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function download_get_validate(handler)
    function download_get_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function download_get_invoke(impl; post_invoke=nothing)
    function download_get_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.download_get(req::HTTP.Request, openapi_params["path"];)
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end

function upload_post_read(handler)
    function upload_post_read_handler(req::HTTP.Request)
        openapi_params = Dict{String,Any}()
        ismultipart = true
        form_data = ismultipart ? HTTP.parse_multipart_form(req) : HTTP.queryparams(String(copy(req.body)))
        openapi_params["file"] = OpenAPI.Servers.to_param(Vector{UInt8}, form_data, "file"; multipart=ismultipart, isfile=true, required=true, )
        req.context[:openapi_params] = openapi_params

        return handler(req)
    end
end

function upload_post_validate(handler)
    function upload_post_validate_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        
        return handler(req)
    end
end

function upload_post_invoke(impl; post_invoke=nothing)
    function upload_post_invoke_handler(req::HTTP.Request)
        openapi_params = req.context[:openapi_params]
        ret = impl.upload_post(req::HTTP.Request, openapi_params["file"];)
        resp = OpenAPI.Servers.server_response(ret)
        return (post_invoke === nothing) ? resp : post_invoke(req, resp)
    end
end


function registerDefaultApi(router::HTTP.Router, impl; path_prefix::String="", optional_middlewares...)
    HTTP.register!(router, "GET", path_prefix * "/download", OpenAPI.Servers.middleware(impl, download_get_read, download_get_validate, download_get_invoke; optional_middlewares...))
    HTTP.register!(router, "POST", path_prefix * "/upload", OpenAPI.Servers.middleware(impl, upload_post_read, upload_post_validate, upload_post_invoke; optional_middlewares...))
    return router
end
