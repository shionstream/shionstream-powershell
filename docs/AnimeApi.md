# ShionStream.Client.ShionStream.Client\Api.AnimeApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1AnimeGet**](AnimeApi.md#Invoke-V1AnimeGet) | **GET** /v1/anime | List Anime Catalog
[**Invoke-V1AnimeSlugGet**](AnimeApi.md#Invoke-V1AnimeSlugGet) | **GET** /v1/anime/{slug} | Get Anime Details by Slug


<a id="Invoke-V1AnimeGet"></a>
# **Invoke-V1AnimeGet**
> V1AnimeGet200Response Invoke-V1AnimeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Genre] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Season] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Year] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sort] <String><br>

List Anime Catalog

Retrieve paginated list of anime with filters for type, status, season, year, genre, and search.

### Example
```powershell
$Page = "MyPage" # String |  (optional) (default to "1")
$Limit = "MyLimit" # String |  (optional) (default to "20")
$Search = "MySearch" # String |  (optional)
$Type = "MyType" # String |  (optional)
$Status = "MyStatus" # String |  (optional)
$Genre = "MyGenre" # String |  (optional)
$Season = "MySeason" # String |  (optional)
$Year = "MyYear" # String |  (optional)
$Sort = "latest" # String |  (optional) (default to "latest")

# List Anime Catalog
try {
    $Result = Invoke-V1AnimeGet -Page $Page -Limit $Limit -Search $Search -Type $Type -Status $Status -Genre $Genre -Season $Season -Year $Year -Sort $Sort
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AnimeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **String**|  | [optional] [default to &quot;1&quot;]
 **Limit** | **String**|  | [optional] [default to &quot;20&quot;]
 **Search** | **String**|  | [optional] 
 **Type** | **String**|  | [optional] 
 **Status** | **String**|  | [optional] 
 **Genre** | **String**|  | [optional] 
 **Season** | **String**|  | [optional] 
 **Year** | **String**|  | [optional] 
 **Sort** | **String**|  | [optional] [default to &quot;latest&quot;]

### Return type

[**V1AnimeGet200Response**](V1AnimeGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1AnimeSlugGet"></a>
# **Invoke-V1AnimeSlugGet**
> V1AnimeSlugGet200Response Invoke-V1AnimeSlugGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Slug] <String><br>

Get Anime Details by Slug

Retrieve comprehensive anime metadata including associated genres, studios, schedule, and trending stats.

### Example
```powershell
$Slug = "MySlug" # String | 

# Get Anime Details by Slug
try {
    $Result = Invoke-V1AnimeSlugGet -Slug $Slug
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1AnimeSlugGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Slug** | **String**|  | 

### Return type

[**V1AnimeSlugGet200Response**](V1AnimeSlugGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

