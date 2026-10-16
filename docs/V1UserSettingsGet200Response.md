# V1UserSettingsGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**VarData** | [**V1UserSettingsGet200ResponseData**](V1UserSettingsGet200ResponseData.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsGet200Response = Initialize-ShionStream.ClientV1UserSettingsGet200Response  -Success null `
 -VarData null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

