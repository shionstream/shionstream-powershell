# ShionStream.Client.ShionStream.Client\Api.CommentsApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1CommentsGet**](CommentsApi.md#Invoke-V1CommentsGet) | **GET** /v1/comments | Get Episode Comments
[**Invoke-V1CommentsIdLikePost**](CommentsApi.md#Invoke-V1CommentsIdLikePost) | **POST** /v1/comments/{id}/like | Like or Dislike Comment
[**Invoke-V1CommentsIdReportPost**](CommentsApi.md#Invoke-V1CommentsIdReportPost) | **POST** /v1/comments/{id}/report | Report Comment
[**Invoke-V1CommentsPost**](CommentsApi.md#Invoke-V1CommentsPost) | **POST** /v1/comments | Create Comment


<a id="Invoke-V1CommentsGet"></a>
# **Invoke-V1CommentsGet**
> V1CommentsGet200Response Invoke-V1CommentsGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EpisodeId] <String><br>

Get Episode Comments

Retrieves threaded comments for an episode, ordered by newest first, with like/dislike counts.

### Example
```powershell
$EpisodeId = "MyEpisodeId" # String | 

# Get Episode Comments
try {
    $Result = Invoke-V1CommentsGet -EpisodeId $EpisodeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1CommentsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EpisodeId** | **String**|  | 

### Return type

[**V1CommentsGet200Response**](V1CommentsGet200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1CommentsIdLikePost"></a>
# **Invoke-V1CommentsIdLikePost**
> V1CommentsIdLikePost200Response Invoke-V1CommentsIdLikePost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1CommentsIdLikePostRequest] <PSCustomObject><br>

Like or Dislike Comment

Adds or toggles a like/dislike reaction on a comment. Upserts on [commentId, userId].

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$V1CommentsIdLikePostRequest = Initialize-V1CommentsIdLikePostRequest -IsDislike $false # V1CommentsIdLikePostRequest |  (optional)

# Like or Dislike Comment
try {
    $Result = Invoke-V1CommentsIdLikePost -Id $Id -V1CommentsIdLikePostRequest $V1CommentsIdLikePostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1CommentsIdLikePost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **V1CommentsIdLikePostRequest** | [**V1CommentsIdLikePostRequest**](V1CommentsIdLikePostRequest.md)|  | [optional] 

### Return type

[**V1CommentsIdLikePost200Response**](V1CommentsIdLikePost200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1CommentsIdReportPost"></a>
# **Invoke-V1CommentsIdReportPost**
> V1CommentsIdLikePost200Response Invoke-V1CommentsIdReportPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1CommentsIdReportPostRequest] <PSCustomObject><br>

Report Comment

Submits a comment to the moderation queue with a reason.

### Example
```powershell
$Id = "MyId" # String | 
$V1CommentsIdReportPostRequest = Initialize-V1CommentsIdReportPostRequest -Reason "MyReason" # V1CommentsIdReportPostRequest |  (optional)

# Report Comment
try {
    $Result = Invoke-V1CommentsIdReportPost -Id $Id -V1CommentsIdReportPostRequest $V1CommentsIdReportPostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1CommentsIdReportPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **V1CommentsIdReportPostRequest** | [**V1CommentsIdReportPostRequest**](V1CommentsIdReportPostRequest.md)|  | [optional] 

### Return type

[**V1CommentsIdLikePost200Response**](V1CommentsIdLikePost200Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1CommentsPost"></a>
# **Invoke-V1CommentsPost**
> V1CommentsPost201Response Invoke-V1CommentsPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1CommentsPostRequest] <PSCustomObject><br>

Create Comment

Creates a new comment or reply on an episode. Supports both authenticated users and guests (guest requires name and email).

### Example
```powershell
$V1CommentsPostRequest = Initialize-V1CommentsPostRequest -AnimeId "MyAnimeId" -EpisodeId "MyEpisodeId" -Content "MyContent" -ParentId "MyParentId" -IsSpoiler $false -GuestName "MyGuestName" -GuestEmail "MyGuestEmail" # V1CommentsPostRequest |  (optional)

# Create Comment
try {
    $Result = Invoke-V1CommentsPost -V1CommentsPostRequest $V1CommentsPostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1CommentsPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **V1CommentsPostRequest** | [**V1CommentsPostRequest**](V1CommentsPostRequest.md)|  | [optional] 

### Return type

[**V1CommentsPost201Response**](V1CommentsPost201Response.md) (PSCustomObject)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

