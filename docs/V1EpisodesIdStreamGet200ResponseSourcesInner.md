# V1EpisodesIdStreamGet200ResponseSourcesInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**ServerName** | **String** |  | [optional] 
**StreamUrl** | **String** |  | 
**Format** | **String** |  | 
**Quality** | **String** |  | 
**Url1080p** | **String** |  | [optional] 
**Url720p** | **String** |  | [optional] 
**Url480p** | **String** |  | [optional] 
**Url360p** | **String** |  | [optional] 
**IsPrimary** | **Boolean** |  | 

## Examples

- Prepare the resource
```powershell
$V1EpisodesIdStreamGet200ResponseSourcesInner = Initialize-ShionStream.ClientV1EpisodesIdStreamGet200ResponseSourcesInner  -Id null `
 -ServerName null `
 -StreamUrl null `
 -Format null `
 -Quality null `
 -Url1080p null `
 -Url720p null `
 -Url480p null `
 -Url360p null `
 -IsPrimary null
```

- Convert the resource to JSON
```powershell
$V1EpisodesIdStreamGet200ResponseSourcesInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

