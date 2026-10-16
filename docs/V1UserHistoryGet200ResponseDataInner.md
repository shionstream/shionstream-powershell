# V1UserHistoryGet200ResponseDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**AnimeId** | **String** |  | 
**EpisodeId** | **String** |  | 
**EpisodeNumber** | **Decimal** |  | [optional] 
**ProgressPercent** | **Decimal** |  | 
**DurationSeconds** | **Decimal** |  | 
**ProgressSeconds** | **Decimal** |  | 
**LastWatchedAt** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1UserHistoryGet200ResponseDataInner = Initialize-ShionStream.ClientV1UserHistoryGet200ResponseDataInner  -Id null `
 -AnimeId null `
 -EpisodeId null `
 -EpisodeNumber null `
 -ProgressPercent null `
 -DurationSeconds null `
 -ProgressSeconds null `
 -LastWatchedAt null
```

- Convert the resource to JSON
```powershell
$V1UserHistoryGet200ResponseDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

