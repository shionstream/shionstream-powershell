# ShionStream.Client.ShionStream.Client\Api.SampleApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1ProtectedSampleGet**](SampleApi.md#Invoke-V1ProtectedSampleGet) | **GET** /v1/protected/sample | Protected Sample Endpoint


<a id="Invoke-V1ProtectedSampleGet"></a>
# **Invoke-V1ProtectedSampleGet**
> V1ProtectedSampleGet200Response Invoke-V1ProtectedSampleGet<br>

Protected Sample Endpoint

Example endpoint that requires a valid Better Auth session or Bearer token.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Protected Sample Endpoint
try {
    $Result = Invoke-V1ProtectedSampleGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1ProtectedSampleGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1ProtectedSampleGet200Response**](V1ProtectedSampleGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

