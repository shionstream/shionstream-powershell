# ShionStream.Client.ShionStream.Client\Api.DashboardApi

All URIs are relative to *https://api.gox.my.id*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V1DashboardAnimeGet**](DashboardApi.md#Invoke-V1DashboardAnimeGet) | **GET** /v1/dashboard/anime | Get Administrative Anime List
[**Invoke-V1DashboardCategoriesGet**](DashboardApi.md#Invoke-V1DashboardCategoriesGet) | **GET** /v1/dashboard/categories | Get Category &amp; Genre Distributions
[**Invoke-V1DashboardEpisodesGet**](DashboardApi.md#Invoke-V1DashboardEpisodesGet) | **GET** /v1/dashboard/episodes | Get Administrative Episodes List
[**Invoke-V1DashboardModerationGet**](DashboardApi.md#Invoke-V1DashboardModerationGet) | **GET** /v1/dashboard/moderation | Get Comment Moderation Reports
[**Invoke-V1DashboardModerationIdPatch**](DashboardApi.md#Invoke-V1DashboardModerationIdPatch) | **PATCH** /v1/dashboard/moderation/{id} | Resolve or Dismiss Moderation Report
[**Invoke-V1DashboardOverviewGet**](DashboardApi.md#Invoke-V1DashboardOverviewGet) | **GET** /v1/dashboard/overview | Get Dashboard Overview
[**Invoke-V1DashboardRolesGet**](DashboardApi.md#Invoke-V1DashboardRolesGet) | **GET** /v1/dashboard/roles | Get System Roles &amp; Permissions
[**Invoke-V1DashboardSeasonsGet**](DashboardApi.md#Invoke-V1DashboardSeasonsGet) | **GET** /v1/dashboard/seasons | Get Seasonal Broadcast Distributions
[**Invoke-V1DashboardStatsGet**](DashboardApi.md#Invoke-V1DashboardStatsGet) | **GET** /v1/dashboard/stats | Get Platform Stats
[**Invoke-V1DashboardUsersGet**](DashboardApi.md#Invoke-V1DashboardUsersGet) | **GET** /v1/dashboard/users | Get Users Directory (Admin Only)


<a id="Invoke-V1DashboardAnimeGet"></a>
# **Invoke-V1DashboardAnimeGet**
> V1DashboardAnimeGet200Response Invoke-V1DashboardAnimeGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

Get Administrative Anime List

Returns paginated anime catalog with filters for administration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = "MyPage" # String |  (optional) (default to "1")
$Limit = "MyLimit" # String |  (optional) (default to "20")
$Status = "MyStatus" # String |  (optional)
$Search = "MySearch" # String |  (optional)

# Get Administrative Anime List
try {
    $Result = Invoke-V1DashboardAnimeGet -Page $Page -Limit $Limit -Status $Status -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardAnimeGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **String**|  | [optional] [default to &quot;1&quot;]
 **Limit** | **String**|  | [optional] [default to &quot;20&quot;]
 **Status** | **String**|  | [optional] 
 **Search** | **String**|  | [optional] 

### Return type

[**V1DashboardAnimeGet200Response**](V1DashboardAnimeGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardCategoriesGet"></a>
# **Invoke-V1DashboardCategoriesGet**
> V1DashboardCategoriesGet200Response Invoke-V1DashboardCategoriesGet<br>

Get Category & Genre Distributions

Returns format categories and genres with associated anime counts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Category & Genre Distributions
try {
    $Result = Invoke-V1DashboardCategoriesGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardCategoriesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DashboardCategoriesGet200Response**](V1DashboardCategoriesGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardEpisodesGet"></a>
# **Invoke-V1DashboardEpisodesGet**
> V1DashboardEpisodesGet200Response Invoke-V1DashboardEpisodesGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AnimeId] <String><br>

Get Administrative Episodes List

Returns paginated episodes with upload status for administration.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = "MyPage" # String |  (optional) (default to "1")
$Limit = "MyLimit" # String |  (optional) (default to "20")
$AnimeId = "MyAnimeId" # String |  (optional)

# Get Administrative Episodes List
try {
    $Result = Invoke-V1DashboardEpisodesGet -Page $Page -Limit $Limit -AnimeId $AnimeId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardEpisodesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **String**|  | [optional] [default to &quot;1&quot;]
 **Limit** | **String**|  | [optional] [default to &quot;20&quot;]
 **AnimeId** | **String**|  | [optional] 

### Return type

[**V1DashboardEpisodesGet200Response**](V1DashboardEpisodesGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardModerationGet"></a>
# **Invoke-V1DashboardModerationGet**
> V1DashboardModerationGet200Response Invoke-V1DashboardModerationGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Status] <String><br>

Get Comment Moderation Reports

Returns reported comments queue with status filter.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Status = "pending" # String |  (optional) (default to "pending")

# Get Comment Moderation Reports
try {
    $Result = Invoke-V1DashboardModerationGet -Status $Status
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardModerationGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Status** | **String**|  | [optional] [default to &quot;pending&quot;]

### Return type

[**V1DashboardModerationGet200Response**](V1DashboardModerationGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardModerationIdPatch"></a>
# **Invoke-V1DashboardModerationIdPatch**
> V1UserSettingsPatch200Response Invoke-V1DashboardModerationIdPatch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V1DashboardModerationIdPatchRequest] <PSCustomObject><br>

Resolve or Dismiss Moderation Report

Updates comment report status and optionally deletes the reported comment.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Id = "MyId" # String | 
$V1DashboardModerationIdPatchRequest = Initialize-V1DashboardModerationIdPatchRequest -Status "resolved" -Action "delete_comment" # V1DashboardModerationIdPatchRequest |  (optional)

# Resolve or Dismiss Moderation Report
try {
    $Result = Invoke-V1DashboardModerationIdPatch -Id $Id -V1DashboardModerationIdPatchRequest $V1DashboardModerationIdPatchRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardModerationIdPatch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 
 **V1DashboardModerationIdPatchRequest** | [**V1DashboardModerationIdPatchRequest**](V1DashboardModerationIdPatchRequest.md)|  | [optional] 

### Return type

[**V1UserSettingsPatch200Response**](V1UserSettingsPatch200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardOverviewGet"></a>
# **Invoke-V1DashboardOverviewGet**
> V1DashboardOverviewGet200Response Invoke-V1DashboardOverviewGet<br>

Get Dashboard Overview

Returns traffic telemetry, recent activity logs, and administrative notifications.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Dashboard Overview
try {
    $Result = Invoke-V1DashboardOverviewGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardOverviewGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DashboardOverviewGet200Response**](V1DashboardOverviewGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardRolesGet"></a>
# **Invoke-V1DashboardRolesGet**
> V1DashboardRolesGet200Response Invoke-V1DashboardRolesGet<br>

Get System Roles & Permissions

Returns role definitions and active user member counts.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get System Roles & Permissions
try {
    $Result = Invoke-V1DashboardRolesGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardRolesGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DashboardRolesGet200Response**](V1DashboardRolesGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardSeasonsGet"></a>
# **Invoke-V1DashboardSeasonsGet**
> V1DashboardSeasonsGet200Response Invoke-V1DashboardSeasonsGet<br>

Get Seasonal Broadcast Distributions

Returns anime release distribution grouped by season and year.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Seasonal Broadcast Distributions
try {
    $Result = Invoke-V1DashboardSeasonsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardSeasonsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DashboardSeasonsGet200Response**](V1DashboardSeasonsGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardStatsGet"></a>
# **Invoke-V1DashboardStatsGet**
> V1DashboardStatsGet200Response Invoke-V1DashboardStatsGet<br>

Get Platform Stats

Returns aggregated platform metrics including anime count, episode count, user count, and storage estimates.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration


# Get Platform Stats
try {
    $Result = Invoke-V1DashboardStatsGet
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardStatsGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**V1DashboardStatsGet200Response**](V1DashboardStatsGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V1DashboardUsersGet"></a>
# **Invoke-V1DashboardUsersGet**
> V1DashboardUsersGet200Response Invoke-V1DashboardUsersGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Page] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Role] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Search] <String><br>

Get Users Directory (Admin Only)

Returns registered users directory with role and status information.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration

$Page = "MyPage" # String |  (optional) (default to "1")
$Limit = "MyLimit" # String |  (optional) (default to "20")
$Role = "MyRole" # String |  (optional)
$Search = "MySearch" # String |  (optional)

# Get Users Directory (Admin Only)
try {
    $Result = Invoke-V1DashboardUsersGet -Page $Page -Limit $Limit -Role $Role -Search $Search
} catch {
    Write-Host ("Exception occurred when calling Invoke-V1DashboardUsersGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Page** | **String**|  | [optional] [default to &quot;1&quot;]
 **Limit** | **String**|  | [optional] [default to &quot;20&quot;]
 **Role** | **String**|  | [optional] 
 **Search** | **String**|  | [optional] 

### Return type

[**V1DashboardUsersGet200Response**](V1DashboardUsersGet200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

