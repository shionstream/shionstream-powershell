# V1EpisodesIdStreamGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Episode** | [**V1EpisodesIdStreamGet200ResponseEpisode**](V1EpisodesIdStreamGet200ResponseEpisode.md) |  | 
**Sources** | [**V1EpisodesIdStreamGet200ResponseSourcesInner[]**](V1EpisodesIdStreamGet200ResponseSourcesInner.md) |  | 
**Subtitles** | [**V1EpisodesIdStreamGet200ResponseSubtitlesInner[]**](V1EpisodesIdStreamGet200ResponseSubtitlesInner.md) |  | 
**Audio** | [**V1EpisodesIdStreamGet200ResponseAudioInner[]**](V1EpisodesIdStreamGet200ResponseAudioInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1EpisodesIdStreamGet200Response = Initialize-ShionStream.ClientV1EpisodesIdStreamGet200Response  -Success null `
 -Episode null `
 -Sources null `
 -Subtitles null `
 -Audio null
```

- Convert the resource to JSON
```powershell
$V1EpisodesIdStreamGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

