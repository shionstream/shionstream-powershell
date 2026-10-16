# V1UserSettingsGet200ResponseDataPlayer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultQuality** | **String** |  | 
**DefaultSubtitle** | **String** |  | 
**AutoPlayNext** | **Boolean** |  | 
**AutoSkipIntro** | **Boolean** |  | 
**PreferredAudio** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsGet200ResponseDataPlayer = Initialize-ShionStream.ClientV1UserSettingsGet200ResponseDataPlayer  -DefaultQuality null `
 -DefaultSubtitle null `
 -AutoPlayNext null `
 -AutoSkipIntro null `
 -PreferredAudio null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsGet200ResponseDataPlayer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

