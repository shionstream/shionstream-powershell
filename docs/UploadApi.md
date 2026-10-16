# ShionStream.Client.ShionStream.Client\Api.UploadApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1UploadHlsPost**](UploadApi.md#Invoke-V1UploadHlsPost) | **POST** /v1/upload/hls | Upload HLS Package to Cloudflare R2
[**Invoke-V1UploadImagePost**](UploadApi.md#Invoke-V1UploadImagePost) | **POST** /v1/upload/image | Upload Image to Cloudflare R2


<a id="Invoke-V1UploadHlsPost"></a>
# **Invoke-V1UploadHlsPost**
> V1UploadHlsPost200Response Invoke-V1UploadHlsPost<br>

Upload HLS Package to Cloudflare R2

Ingests multi-resolution HLS package (master playlist, variants, and .ts segment chunks) directly into Cloudflare R2 object storage.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Upload HLS Package to Cloudflare R2
try {
    $Result = Invoke-V1UploadHlsPost
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UploadHlsPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UploadHlsPost200Response**](V1UploadHlsPost200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UploadImagePost"></a>
# **Invoke-V1UploadImagePost**
> V1UploadImagePost200Response Invoke-V1UploadImagePost<br>

Upload Image to Cloudflare R2

Uploads posters, banners, or avatars directly to Cloudflare R2.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Upload Image to Cloudflare R2
try {
    $Result = Invoke-V1UploadImagePost
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UploadImagePost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UploadImagePost200Response**](V1UploadImagePost200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

