# V1UserSettingsPatchRequestPlayer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DefaultQuality** | **String** |  | [optional] 
**DefaultSubtitle** | **String** |  | [optional] 
**AutoPlayNext** | **Boolean** |  | [optional] 
**AutoSkipIntro** | **Boolean** |  | [optional] 
**PreferredAudio** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1UserSettingsPatchRequestPlayer = Initialize-ShionStream.ClientV1UserSettingsPatchRequestPlayer  -DefaultQuality null `
 -DefaultSubtitle null `
 -AutoPlayNext null `
 -AutoSkipIntro null `
 -PreferredAudio null
```

- Convert the resource to JSON
```powershell
$V1UserSettingsPatchRequestPlayer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

