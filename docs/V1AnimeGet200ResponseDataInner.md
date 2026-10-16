# V1AnimeGet200ResponseDataInner
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

## Examples

- Prepare the resource
```powershell
$V1AnimeGet200ResponseDataInner = Initialize-ShionStream.ClientV1AnimeGet200ResponseDataInner  -Id null `
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
 -SubOrDub null
```

- Convert the resource to JSON
```powershell
$V1AnimeGet200ResponseDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

