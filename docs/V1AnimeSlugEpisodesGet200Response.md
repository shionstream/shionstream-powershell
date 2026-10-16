# V1AnimeSlugEpisodesGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | **Boolean** |  | 
**Anime** | [**V1AnimeSlugEpisodesGet200ResponseAnime**](V1AnimeSlugEpisodesGet200ResponseAnime.md) |  | 
**VarData** | [**V1AnimeSlugEpisodesGet200ResponseDataInner[]**](V1AnimeSlugEpisodesGet200ResponseDataInner.md) |  | 
**Pagination** | [**V1AnimeGet200ResponsePagination**](V1AnimeGet200ResponsePagination.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1AnimeSlugEpisodesGet200Response = Initialize-ShionStream.ClientV1AnimeSlugEpisodesGet200Response  -Success null `
 -Anime null `
 -VarData null `
 -Pagination null
```

- Convert the resource to JSON
```powershell
$V1AnimeSlugEpisodesGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

