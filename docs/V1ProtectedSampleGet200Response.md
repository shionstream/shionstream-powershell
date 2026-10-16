# V1ProtectedSampleGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Message** | **String** |  | 
**User** | [**V1ProtectedSampleGet200ResponseUser**](V1ProtectedSampleGet200ResponseUser.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1ProtectedSampleGet200Response = Initialize-ShionStream.ClientV1ProtectedSampleGet200Response  -Success null `
 -Message null `
 -User null
```

- Convert the resource to JSON
```powershell
$V1ProtectedSampleGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

