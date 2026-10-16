# ShionStream.Client.ShionStream.Client\Api.SystemApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-HealthGet**](SystemApi.md#Invoke-HealthGet) | **GET** /health | Health Check


<a id="Invoke-HealthGet"></a>
# **Invoke-HealthGet**
> HealthGet200Response Invoke-HealthGet<br>

Health Check

Check if the API and Cloudflare D1 database connection are healthy.

### Example
```powershell

# Health Check
try {
    $Result = Invoke-HealthGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-HealthGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HealthGet200Response**](HealthGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

