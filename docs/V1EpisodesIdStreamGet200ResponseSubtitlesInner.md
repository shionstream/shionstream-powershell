# V1EpisodesIdStreamGet200ResponseSubtitlesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Label** | **String** |  | 
**LanguageCode** | **String** |  | 
**FileUrl** | **String** |  | 
**Format** | **String** |  | 
**IsDefault** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1EpisodesIdStreamGet200ResponseSubtitlesInner = Initialize-ShionStream.ClientV1EpisodesIdStreamGet200ResponseSubtitlesInner  -Id null `
 -Label null `
 -LanguageCode null `
 -FileUrl null `
 -Format null `
 -IsDefault null
```

- Convert the resource to JSON
```powershell
$V1EpisodesIdStreamGet200ResponseSubtitlesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

