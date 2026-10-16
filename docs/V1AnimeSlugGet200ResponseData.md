# V1AnimeSlugGet200ResponseData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Slug** | **String** |  | 
**TitleRomaji** | **String** |  | 
**TitleEnglish** | **String** |  | [optional] 
**TitleJapanese** | **String** |  | [optional] 
**Synopsis** | **String** |  | [optional] 
**CoverImage** | **String** |  | [optional] 
**BannerImage** | **String** |  | [optional] 
**Type** | **String** |  | 
**Status** | **String** |  | 
**SeasonName** | **String** |  | [optional] 
**SeasonYear** | **Decimal** |  | [optional] 
**EpisodesCount** | **Decimal** |  | 
**DurationPerEp** | **String** |  | [optional] 
**Rating** | **Decimal** |  | [optional] 
**IsFeatured** | **Boolean** |  | 
**IsTrending** | **Boolean** |  | 
**SubOrDub** | **String** |  | 
**Genres** | [**V1AnimeSlugGet200ResponseDataGenresInner[]**](V1AnimeSlugGet200ResponseDataGenresInner.md) |  | 
**Studios** | [**V1AnimeSlugGet200ResponseDataGenresInner[]**](V1AnimeSlugGet200ResponseDataGenresInner.md) |  | 
**Schedule** | [**V1AnimeSlugGet200ResponseDataSchedule**](V1AnimeSlugGet200ResponseDataSchedule.md) |  | [optional] 
**TrendingStats** | [**V1AnimeSlugGet200ResponseDataTrendingStats**](V1AnimeSlugGet200ResponseDataTrendingStats.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$V1AnimeSlugGet200ResponseData = Initialize-ShionStream.ClientV1AnimeSlugGet200ResponseData  -Id null `
 -Slug null `
 -TitleRomaji null `
 -TitleEnglish null `
 -TitleJapanese null `
 -Synopsis null `
 -CoverImage null `
 -BannerImage null `
 -Type null `
 -Status null `
 -SeasonName null `
 -SeasonYear null `
 -EpisodesCount null `
 -DurationPerEp null `
 -Rating null `
 -IsFeatured null `
 -IsTrending null `
 -SubOrDub null `
 -Genres null `
 -Studios null `
 -Schedule null `
 -TrendingStats null
```

- Convert the resource to JSON
```powershell
$V1AnimeSlugGet200ResponseData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

