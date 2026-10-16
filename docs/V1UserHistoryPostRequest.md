# V1UserHistoryPostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AnimeId** | **String** |  | 
**EpisodeId** | **String** |  | 
**EpisodeNumber** | **Decimal** |  | [optional] 
**ProgressPercent** | **Decimal** |  | [optional] [default to 0]
**DurationSeconds** | **Decimal** |  | [optional] [default to 0]
**ProgressSeconds** | **Decimal** |  | [optional] [default to 0]

## Examples

- Prepare the resource
```powershell
$V1UserHistoryPostRequest = Initialize-ShionStream.ClientV1UserHistoryPostRequest  -AnimeId null `
 -EpisodeId null `
 -EpisodeNumber null `
 -ProgressPercent null `
 -DurationSeconds null `
 -ProgressSeconds null
```

- Convert the resource to JSON
```powershell
$V1UserHistoryPostRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

