# DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_get**](DefaultApi.md#download_get) | **GET** /download | Download a file
[**upload_post**](DefaultApi.md#upload_post) | **POST** /upload | Upload a file


# **download_get**
> download_get(_api::DefaultApi, path::String; _mediaType=nothing) -> String, OpenAPI.Clients.ApiResponse <br/>
> download_get(_api::DefaultApi, response_stream::Channel, path::String; _mediaType=nothing) -> Channel{ String }, OpenAPI.Clients.ApiResponse

Download a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**path** | **String**| Absolute path to destination | [default to nothing]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **upload_post**
> upload_post(_api::DefaultApi, file::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> upload_post(_api::DefaultApi, response_stream::Channel, file::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Upload a file

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DefaultApi** | API context | 
**file** | **String****String**|  | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

