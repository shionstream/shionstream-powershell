# HealthGet500Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | 
**Timestamp** | **String** |  | 
**Database** | **String** |  | 
**VarError** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HealthGet500Response = Initialize-ShionStream.ClientHealthGet500Response  -Status null `
 -Timestamp null `
 -Database null `
 -VarError null
```

- Convert the resource to JSON
```powershell
$HealthGet500Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

