# DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**upload_post**](DefaultApi.md#upload_post) | **POST** /upload | Upload a file


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

