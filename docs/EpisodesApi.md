# ShionStream.Client.ShionStream.Client\Api.EpisodesApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1AnimeSlugEpisodesGet**](EpisodesApi.md#Invoke-V1AnimeSlugEpisodesGet) | **GET** /v1/anime/{slug}/episodes | List Episodes by Anime Slug
[**Invoke-V1EpisodesIdStreamGet**](EpisodesApi.md#Invoke-V1EpisodesIdStreamGet) | **GET** /v1/episodes/{id}/stream | Get Episode Stream Sources


<a id="Invoke-V1AnimeSlugEpisodesGet"></a>
# **Invoke-V1AnimeSlugEpisodesGet**
> V1AnimeSlugEpisodesGet200Response Invoke-V1AnimeSlugEpisodesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List Episodes by Anime Slug

Retrieve an ordered list of published episodes for a specific anime.

### Example
```powershell
$Slug = "MySlug" # String | 
$Page = "MyPage" # String |  (optional) (default to "1")
$Limit = "MyLimit" # String |  (optional) (default to "50")
$Sort = "asc" # String |  (optional) (default to "asc")

# List Episodes by Anime Slug
try {
    $Result = Invoke-V1AnimeSlugEpisodesGet -Slug $Slug -Page $Page -Limit $Limit -Sort $Sort
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AnimeSlugEpisodesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 
 **Page** | **String**|  | [optional] [default to &quot;1&quot;]
 **Limit** | **String**|  | [optional] [default to &quot;50&quot;]
 **Sort** | **String**|  | [optional] [default to &quot;asc&quot;]

### Return type

[**V1AnimeSlugEpisodesGet200Response**](V1AnimeSlugEpisodesGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1EpisodesIdStreamGet"></a>
# **Invoke-V1EpisodesIdStreamGet**
> V1EpisodesIdStreamGet200Response Invoke-V1EpisodesIdStreamGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Episode Stream Sources

Retrieve video playback manifests, multi-resolution URLs, subtitles, and audio tracks for an episode.

### Example
```powershell
$Id = "MyId" # String | 

# Get Episode Stream Sources
try {
    $Result = Invoke-V1EpisodesIdStreamGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1EpisodesIdStreamGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**V1EpisodesIdStreamGet200Response**](V1EpisodesIdStreamGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

