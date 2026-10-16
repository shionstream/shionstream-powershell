# V1EpisodesIdStreamGet200ResponseAudioInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Label** | **String** |  | 
**LanguageCode** | **String** |  | 
**AudioUrl** | **String** |  | 
**Type** | **String** |  | 
**IsDefault** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1EpisodesIdStreamGet200ResponseAudioInner = Initialize-ShionStream.ClientV1EpisodesIdStreamGet200ResponseAudioInner  -Id null `
 -Label null `
 -LanguageCode null `
 -AudioUrl null `
 -Type null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$V1EpisodesIdStreamGet200ResponseAudioInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

