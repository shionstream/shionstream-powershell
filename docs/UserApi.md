# ShionStream.Client.ShionStream.Client\Api.UserApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1UserHistoryDelete**](UserApi.md#Invoke-V1UserHistoryDelete) | **DELETE** /v1/user/history | Clear All History
[**Invoke-V1UserHistoryGet**](UserApi.md#Invoke-V1UserHistoryGet) | **GET** /v1/user/history | Get Watch History
[**Invoke-V1UserHistoryIdDelete**](UserApi.md#Invoke-V1UserHistoryIdDelete) | **DELETE** /v1/user/history/{id} | Delete History Item
[**Invoke-V1UserHistoryPost**](UserApi.md#Invoke-V1UserHistoryPost) | **POST** /v1/user/history | Record Playback Progress
[**Invoke-V1UserProfileGet**](UserApi.md#Invoke-V1UserProfileGet) | **GET** /v1/user/profile | Get User Profile
[**Invoke-V1UserSettingsGet**](UserApi.md#Invoke-V1UserSettingsGet) | **GET** /v1/user/settings | Get User Settings
[**Invoke-V1UserSettingsPatch**](UserApi.md#Invoke-V1UserSettingsPatch) | **PATCH** /v1/user/settings | Update User Settings
[**Invoke-V1UserWatchlistAnimeIdDelete**](UserApi.md#Invoke-V1UserWatchlistAnimeIdDelete) | **DELETE** /v1/user/watchlist/{animeId} | Remove from Watchlist
[**Invoke-V1UserWatchlistAnimeIdPatch**](UserApi.md#Invoke-V1UserWatchlistAnimeIdPatch) | **PATCH** /v1/user/watchlist/{animeId} | Update Watchlist Entry
[**Invoke-V1UserWatchlistGet**](UserApi.md#Invoke-V1UserWatchlistGet) | **GET** /v1/user/watchlist | Get User Watchlist
[**Invoke-V1UserWatchlistPost**](UserApi.md#Invoke-V1UserWatchlistPost) | **POST** /v1/user/watchlist | Add to Watchlist


<a id="Invoke-V1UserHistoryDelete"></a>
# **Invoke-V1UserHistoryDelete**
> V1UserSettingsPatch200Response Invoke-V1UserHistoryDelete<br>

Clear All History

Clears the authenticated user's entire watch history.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Clear All History
try {
    $Result = Invoke-V1UserHistoryDelete
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserHistoryDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserHistoryGet"></a>
# **Invoke-V1UserHistoryGet**
> V1UserHistoryGet200Response Invoke-V1UserHistoryGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>

Get Watch History

Retrieves the authenticated user's watch history sorted by most recent.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Limit = "MyLimit" # String |  (optional) (default to "50")

# Get Watch History
try {
    $Result = Invoke-V1UserHistoryGet -Limit $Limit
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserHistoryGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **String**|  | [optional] [default to &quot;50&quot;]

### Return type

[**V1UserHistoryGet200Response**](V1UserHistoryGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserHistoryIdDelete"></a>
# **Invoke-V1UserHistoryIdDelete**
> V1UserSettingsPatch200Response Invoke-V1UserHistoryIdDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete History Item

Deletes a single watch history record.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 

# Delete History Item
try {
    $Result = Invoke-V1UserHistoryIdDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserHistoryIdDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserHistoryPost"></a>
# **Invoke-V1UserHistoryPost**
> V1UserSettingsPatch200Response Invoke-V1UserHistoryPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1UserHistoryPostRequest] <PSCustomObject><br>

Record Playback Progress

Records or updates playback progress for an episode (heartbeat). Upserts on [userId, episodeId].

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$V1UserHistoryPostRequest = Initialize-V1UserHistoryPostRequest -AnimeId "MyAnimeId" -EpisodeId "MyEpisodeId" -EpisodeNumber 0 -ProgressPercent 0 -DurationSeconds 0 -ProgressSeconds 0 # V1UserHistoryPostRequest |  (optional)

# Record Playback Progress
try {
    $Result = Invoke-V1UserHistoryPost -V1UserHistoryPostRequest $V1UserHistoryPostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserHistoryPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **V1UserHistoryPostRequest** | [**V1UserHistoryPostRequest**](V1UserHistoryPostRequest.md)|  | [optional] 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserProfileGet"></a>
# **Invoke-V1UserProfileGet**
> V1UserProfileGet200Response Invoke-V1UserProfileGet<br>

Get User Profile

Retrieves the authenticated user's profile with activity summary (watchlist count and recent history count).

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get User Profile
try {
    $Result = Invoke-V1UserProfileGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserProfileGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UserProfileGet200Response**](V1UserProfileGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserSettingsGet"></a>
# **Invoke-V1UserSettingsGet**
> V1UserSettingsGet200Response Invoke-V1UserSettingsGet<br>

Get User Settings

Retrieves player preferences and notification settings for the authenticated user.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get User Settings
try {
    $Result = Invoke-V1UserSettingsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserSettingsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1UserSettingsGet200Response**](V1UserSettingsGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserSettingsPatch"></a>
# **Invoke-V1UserSettingsPatch**
> V1UserSettingsPatch200Response Invoke-V1UserSettingsPatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1UserSettingsPatchRequest] <PSCustomObject><br>

Update User Settings

Updates player preferences and notification settings.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$V1UserSettingsPatchRequestProfile = Initialize-V1UserSettingsPatchRequestProfile -DisplayName "MyDisplayName" -Bio "MyBio" -AvatarUrl "MyAvatarUrl"
$V1UserSettingsPatchRequestPlayer = Initialize-V1UserSettingsPatchRequestPlayer -DefaultQuality "MyDefaultQuality" -DefaultSubtitle "MyDefaultSubtitle" -AutoPlayNext $false -AutoSkipIntro $false -PreferredAudio "MyPreferredAudio"
$V1UserSettingsPatchRequestNotifications = Initialize-V1UserSettingsPatchRequestNotifications -NewEpisodeAlerts $false -WatchlistUpdates $false -MarketingEmails $false -PublicWatchlist $false
$V1UserSettingsPatchRequest = Initialize-V1UserSettingsPatchRequest -VarProfile $V1UserSettingsPatchRequestProfile -Player $V1UserSettingsPatchRequestPlayer -Notifications $V1UserSettingsPatchRequestNotifications # V1UserSettingsPatchRequest |  (optional)

# Update User Settings
try {
    $Result = Invoke-V1UserSettingsPatch -V1UserSettingsPatchRequest $V1UserSettingsPatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserSettingsPatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **V1UserSettingsPatchRequest** | [**V1UserSettingsPatchRequest**](V1UserSettingsPatchRequest.md)|  | [optional] 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserWatchlistAnimeIdDelete"></a>
# **Invoke-V1UserWatchlistAnimeIdDelete**
> V1UserSettingsPatch200Response Invoke-V1UserWatchlistAnimeIdDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnimeId] <String><br>

Remove from Watchlist

Removes an anime from the user's watchlist.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AnimeId = "MyAnimeId" # String | 

# Remove from Watchlist
try {
    $Result = Invoke-V1UserWatchlistAnimeIdDelete -AnimeId $AnimeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserWatchlistAnimeIdDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AnimeId** | **String**|  | 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserWatchlistAnimeIdPatch"></a>
# **Invoke-V1UserWatchlistAnimeIdPatch**
> V1UserSettingsPatch200Response Invoke-V1UserWatchlistAnimeIdPatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnimeId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1UserWatchlistAnimeIdPatchRequest] <PSCustomObject><br>

Update Watchlist Entry

Updates status or favorite flag for a specific anime in the user's watchlist.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$AnimeId = "MyAnimeId" # String | 
$V1UserWatchlistAnimeIdPatchRequest = Initialize-V1UserWatchlistAnimeIdPatchRequest -Status "MyStatus" -IsFavorite $false # V1UserWatchlistAnimeIdPatchRequest |  (optional)

# Update Watchlist Entry
try {
    $Result = Invoke-V1UserWatchlistAnimeIdPatch -AnimeId $AnimeId -V1UserWatchlistAnimeIdPatchRequest $V1UserWatchlistAnimeIdPatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserWatchlistAnimeIdPatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AnimeId** | **String**|  | 
 **V1UserWatchlistAnimeIdPatchRequest** | [**V1UserWatchlistAnimeIdPatchRequest**](V1UserWatchlistAnimeIdPatchRequest.md)|  | [optional] 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserWatchlistGet"></a>
# **Invoke-V1UserWatchlistGet**
> V1UserWatchlistGet200Response Invoke-V1UserWatchlistGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Get User Watchlist

Retrieves the authenticated user's anime watchlist with optional status filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Status = "MyStatus" # String |  (optional)

# Get User Watchlist
try {
    $Result = Invoke-V1UserWatchlistGet -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserWatchlistGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | **String**|  | [optional] 

### Return type

[**V1UserWatchlistGet200Response**](V1UserWatchlistGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1UserWatchlistPost"></a>
# **Invoke-V1UserWatchlistPost**
> V1UserSettingsPatch200Response Invoke-V1UserWatchlistPost<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1UserWatchlistPostRequest] <PSCustomObject><br>

Add to Watchlist

Adds an anime to the user's watchlist. Upserts if the anime already exists in the watchlist.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$V1UserWatchlistPostRequest = Initialize-V1UserWatchlistPostRequest -AnimeId "MyAnimeId" -Status "MyStatus" # V1UserWatchlistPostRequest |  (optional)

# Add to Watchlist
try {
    $Result = Invoke-V1UserWatchlistPost -V1UserWatchlistPostRequest $V1UserWatchlistPostRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1UserWatchlistPost: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **V1UserWatchlistPostRequest** | [**V1UserWatchlistPostRequest**](V1UserWatchlistPostRequest.md)|  | [optional] 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

