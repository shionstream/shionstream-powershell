# V1AnimeSlugGet200ResponseDataSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReleaseDay** | **String** |  | 
**ReleaseTime** | **String** |  | 
**EpisodeNumber** | **Decimal** |  | [optional] 
**Status** | **String** |  | 
**Timezone** | **String** |  | 

## Examples

- Prepare the resource
```powershell
$V1AnimeSlugGet200ResponseDataSchedule = Initialize-ShionStream.ClientV1AnimeSlugGet200ResponseDataSchedule  -ReleaseDay null `
 -ReleaseTime null `
 -EpisodeNumber null `
 -Status null `
 -Timezone null
```

- Convert the resource to JSON
```powershell
$V1AnimeSlugGet200ResponseDataSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

