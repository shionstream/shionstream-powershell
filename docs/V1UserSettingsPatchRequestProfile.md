# V1UserSettingsPatchRequestProfile
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**Bio** | **String** |  | [optional] 
**AvatarUrl** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsPatchRequestProfile = Initialize-ShionStream.ClientV1UserSettingsPatchRequestProfile  -DisplayName null `
 -Bio null `
 -AvatarUrl null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsPatchRequestProfile | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

