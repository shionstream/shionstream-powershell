# HealthGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Timestamp** | **String** |  | 
**Database** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$HealthGet200Response = Initialize-ShionStream.ClientHealthGet200Response  -Status null `
 -Timestamp null `
 -Database null
```

- Convert the resource to JSON
```powershell
$HealthGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

