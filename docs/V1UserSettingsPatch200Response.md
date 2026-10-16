# V1UserSettingsPatch200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Message** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsPatch200Response = Initialize-ShionStream.ClientV1UserSettingsPatch200Response  -Success null `
 -Message null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsPatch200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

