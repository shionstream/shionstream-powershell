# ShionStream.Client - the PowerShell module for the ShionStream API

Modular anime streaming and metadata API built with Hono on Cloudflare Workers.

This PowerShell module is automatically generated for ShionStream API using OpenAPI specification:

- API version: 1.0.0
- SDK version: 0.1.2
- Generator version: 7.26.0
- Build package: org.openapitools.codegen.languages.PowerShellClientCodegen
    For more information, please visit [https://gox.my.id](https://gox.my.id)

<a id="frameworks-supported"></a>
## Frameworks supported
- PowerShell 6.2 or later

<a id="dependencies"></a>
## Dependencies

<a id="installation"></a>
## Installation


To install from the source, run the following command to build and install the PowerShell module locally:
```powershell
Build.ps1
Import-Module -Name '.\src\ShionStream.Client' -Verbose
```

To avoid function name collision, one can use `-Prefix`, e.g. `Import-Module -Name '.\src\ShionStream.Client' -Prefix prefix`

To uninstall the module, simply run:
```powershell
Remove-Module -FullyQualifiedName @{ModuleName = "ShionStream.Client"; ModuleVersion = "0.1.2"}
```

<a id="tests"></a>
## Tests

To install and run `Pester`, please execute the following commands in the terminal:

```powershell
Install-module -name Pester -force

Invoke-Pester
```

For troubleshooting, please run `$DebugPreference = 'Continue'` to turn on debugging and disable it with `$DebugPreference = 'SilentlyContinue'` when done with the troubleshooting.

## Documentation for API Endpoints

All URIs are relative to *https://api.gox.my.id*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AnimeApi* | [**Invoke-V1AnimeGet**](docs/AnimeApi.md#Invoke-V1AnimeGet) | **GET** /v1/anime | List Anime Catalog
*AnimeApi* | [**Invoke-V1AnimeSlugGet**](docs/AnimeApi.md#Invoke-V1AnimeSlugGet) | **GET** /v1/anime/{slug} | Get Anime Details by Slug
*CommentsApi* | [**Invoke-V1CommentsGet**](docs/CommentsApi.md#Invoke-V1CommentsGet) | **GET** /v1/comments | Get Episode Comments
*CommentsApi* | [**Invoke-V1CommentsIdLikePost**](docs/CommentsApi.md#Invoke-V1CommentsIdLikePost) | **POST** /v1/comments/{id}/like | Like or Dislike Comment
*CommentsApi* | [**Invoke-V1CommentsIdReportPost**](docs/CommentsApi.md#Invoke-V1CommentsIdReportPost) | **POST** /v1/comments/{id}/report | Report Comment
*CommentsApi* | [**Invoke-V1CommentsPost**](docs/CommentsApi.md#Invoke-V1CommentsPost) | **POST** /v1/comments | Create Comment
*DashboardApi* | [**Invoke-V1DashboardAnimeGet**](docs/DashboardApi.md#Invoke-V1DashboardAnimeGet) | **GET** /v1/dashboard/anime | Get Administrative Anime List
*DashboardApi* | [**Invoke-V1DashboardCategoriesGet**](docs/DashboardApi.md#Invoke-V1DashboardCategoriesGet) | **GET** /v1/dashboard/categories | Get Category & Genre Distributions
*DashboardApi* | [**Invoke-V1DashboardEpisodesGet**](docs/DashboardApi.md#Invoke-V1DashboardEpisodesGet) | **GET** /v1/dashboard/episodes | Get Administrative Episodes List
*DashboardApi* | [**Invoke-V1DashboardModerationGet**](docs/DashboardApi.md#Invoke-V1DashboardModerationGet) | **GET** /v1/dashboard/moderation | Get Comment Moderation Reports
*DashboardApi* | [**Invoke-V1DashboardModerationIdPatch**](docs/DashboardApi.md#Invoke-V1DashboardModerationIdPatch) | **PATCH** /v1/dashboard/moderation/{id} | Resolve or Dismiss Moderation Report
*DashboardApi* | [**Invoke-V1DashboardOverviewGet**](docs/DashboardApi.md#Invoke-V1DashboardOverviewGet) | **GET** /v1/dashboard/overview | Get Dashboard Overview
*DashboardApi* | [**Invoke-V1DashboardRolesGet**](docs/DashboardApi.md#Invoke-V1DashboardRolesGet) | **GET** /v1/dashboard/roles | Get System Roles & Permissions
*DashboardApi* | [**Invoke-V1DashboardSeasonsGet**](docs/DashboardApi.md#Invoke-V1DashboardSeasonsGet) | **GET** /v1/dashboard/seasons | Get Seasonal Broadcast Distributions
*DashboardApi* | [**Invoke-V1DashboardStatsGet**](docs/DashboardApi.md#Invoke-V1DashboardStatsGet) | **GET** /v1/dashboard/stats | Get Platform Stats
*DashboardApi* | [**Invoke-V1DashboardUsersGet**](docs/DashboardApi.md#Invoke-V1DashboardUsersGet) | **GET** /v1/dashboard/users | Get Users Directory (Admin Only)
*EpisodesApi* | [**Invoke-V1AnimeSlugEpisodesGet**](docs/EpisodesApi.md#Invoke-V1AnimeSlugEpisodesGet) | **GET** /v1/anime/{slug}/episodes | List Episodes by Anime Slug
*EpisodesApi* | [**Invoke-V1EpisodesIdStreamGet**](docs/EpisodesApi.md#Invoke-V1EpisodesIdStreamGet) | **GET** /v1/episodes/{id}/stream | Get Episode Stream Sources
*SampleApi* | [**Invoke-V1ProtectedSampleGet**](docs/SampleApi.md#Invoke-V1ProtectedSampleGet) | **GET** /v1/protected/sample | Protected Sample Endpoint
*SystemApi* | [**Invoke-HealthGet**](docs/SystemApi.md#Invoke-HealthGet) | **GET** /health | Health Check
*UploadApi* | [**Invoke-V1UploadHlsPost**](docs/UploadApi.md#Invoke-V1UploadHlsPost) | **POST** /v1/upload/hls | Upload HLS Package to Cloudflare R2
*UploadApi* | [**Invoke-V1UploadImagePost**](docs/UploadApi.md#Invoke-V1UploadImagePost) | **POST** /v1/upload/image | Upload Image to Cloudflare R2
*UserApi* | [**Invoke-V1UserHistoryDelete**](docs/UserApi.md#Invoke-V1UserHistoryDelete) | **DELETE** /v1/user/history | Clear All History
*UserApi* | [**Invoke-V1UserHistoryGet**](docs/UserApi.md#Invoke-V1UserHistoryGet) | **GET** /v1/user/history | Get Watch History
*UserApi* | [**Invoke-V1UserHistoryIdDelete**](docs/UserApi.md#Invoke-V1UserHistoryIdDelete) | **DELETE** /v1/user/history/{id} | Delete History Item
*UserApi* | [**Invoke-V1UserHistoryPost**](docs/UserApi.md#Invoke-V1UserHistoryPost) | **POST** /v1/user/history | Record Playback Progress
*UserApi* | [**Invoke-V1UserProfileGet**](docs/UserApi.md#Invoke-V1UserProfileGet) | **GET** /v1/user/profile | Get User Profile
*UserApi* | [**Invoke-V1UserSettingsGet**](docs/UserApi.md#Invoke-V1UserSettingsGet) | **GET** /v1/user/settings | Get User Settings
*UserApi* | [**Invoke-V1UserSettingsPatch**](docs/UserApi.md#Invoke-V1UserSettingsPatch) | **PATCH** /v1/user/settings | Update User Settings
*UserApi* | [**Invoke-V1UserWatchlistAnimeIdDelete**](docs/UserApi.md#Invoke-V1UserWatchlistAnimeIdDelete) | **DELETE** /v1/user/watchlist/{animeId} | Remove from Watchlist
*UserApi* | [**Invoke-V1UserWatchlistAnimeIdPatch**](docs/UserApi.md#Invoke-V1UserWatchlistAnimeIdPatch) | **PATCH** /v1/user/watchlist/{animeId} | Update Watchlist Entry
*UserApi* | [**Invoke-V1UserWatchlistGet**](docs/UserApi.md#Invoke-V1UserWatchlistGet) | **GET** /v1/user/watchlist | Get User Watchlist
*UserApi* | [**Invoke-V1UserWatchlistPost**](docs/UserApi.md#Invoke-V1UserWatchlistPost) | **POST** /v1/user/watchlist | Add to Watchlist


## Documentation for Models

 - [ShionStream.Client\Model.HealthGet200Response](docs/HealthGet200Response.md)
 - [ShionStream.Client\Model.HealthGet500Response](docs/HealthGet500Response.md)
 - [ShionStream.Client\Model.V1AnimeGet200Response](docs/V1AnimeGet200Response.md)
 - [ShionStream.Client\Model.V1AnimeGet200ResponseDataInner](docs/V1AnimeGet200ResponseDataInner.md)
 - [ShionStream.Client\Model.V1AnimeGet200ResponsePagination](docs/V1AnimeGet200ResponsePagination.md)
 - [ShionStream.Client\Model.V1AnimeSlugEpisodesGet200Response](docs/V1AnimeSlugEpisodesGet200Response.md)
 - [ShionStream.Client\Model.V1AnimeSlugEpisodesGet200ResponseAnime](docs/V1AnimeSlugEpisodesGet200ResponseAnime.md)
 - [ShionStream.Client\Model.V1AnimeSlugEpisodesGet200ResponseDataInner](docs/V1AnimeSlugEpisodesGet200ResponseDataInner.md)
 - [ShionStream.Client\Model.V1AnimeSlugGet200Response](docs/V1AnimeSlugGet200Response.md)
 - [ShionStream.Client\Model.V1AnimeSlugGet200ResponseData](docs/V1AnimeSlugGet200ResponseData.md)
 - [ShionStream.Client\Model.V1AnimeSlugGet200ResponseDataGenresInner](docs/V1AnimeSlugGet200ResponseDataGenresInner.md)
 - [ShionStream.Client\Model.V1AnimeSlugGet200ResponseDataSchedule](docs/V1AnimeSlugGet200ResponseDataSchedule.md)
 - [ShionStream.Client\Model.V1AnimeSlugGet200ResponseDataTrendingStats](docs/V1AnimeSlugGet200ResponseDataTrendingStats.md)
 - [ShionStream.Client\Model.V1CommentsGet200Response](docs/V1CommentsGet200Response.md)
 - [ShionStream.Client\Model.V1CommentsGet200ResponseDataInner](docs/V1CommentsGet200ResponseDataInner.md)
 - [ShionStream.Client\Model.V1CommentsIdLikePost200Response](docs/V1CommentsIdLikePost200Response.md)
 - [ShionStream.Client\Model.V1CommentsIdLikePostRequest](docs/V1CommentsIdLikePostRequest.md)
 - [ShionStream.Client\Model.V1CommentsIdReportPostRequest](docs/V1CommentsIdReportPostRequest.md)
 - [ShionStream.Client\Model.V1CommentsPost201Response](docs/V1CommentsPost201Response.md)
 - [ShionStream.Client\Model.V1CommentsPostRequest](docs/V1CommentsPostRequest.md)
 - [ShionStream.Client\Model.V1DashboardAnimeGet200Response](docs/V1DashboardAnimeGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardCategoriesGet200Response](docs/V1DashboardCategoriesGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardCategoriesGet200ResponseCategoriesInner](docs/V1DashboardCategoriesGet200ResponseCategoriesInner.md)
 - [ShionStream.Client\Model.V1DashboardCategoriesGet200ResponseGenresInner](docs/V1DashboardCategoriesGet200ResponseGenresInner.md)
 - [ShionStream.Client\Model.V1DashboardEpisodesGet200Response](docs/V1DashboardEpisodesGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardModerationGet200Response](docs/V1DashboardModerationGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardModerationGet200ResponseReportsInner](docs/V1DashboardModerationGet200ResponseReportsInner.md)
 - [ShionStream.Client\Model.V1DashboardModerationGet200ResponseReportsInnerAuthor](docs/V1DashboardModerationGet200ResponseReportsInnerAuthor.md)
 - [ShionStream.Client\Model.V1DashboardModerationGet200ResponseReportsInnerReporter](docs/V1DashboardModerationGet200ResponseReportsInnerReporter.md)
 - [ShionStream.Client\Model.V1DashboardModerationIdPatchRequest](docs/V1DashboardModerationIdPatchRequest.md)
 - [ShionStream.Client\Model.V1DashboardOverviewGet200Response](docs/V1DashboardOverviewGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardOverviewGet200ResponseNotificationsInner](docs/V1DashboardOverviewGet200ResponseNotificationsInner.md)
 - [ShionStream.Client\Model.V1DashboardOverviewGet200ResponseRecentActivitiesInner](docs/V1DashboardOverviewGet200ResponseRecentActivitiesInner.md)
 - [ShionStream.Client\Model.V1DashboardOverviewGet200ResponseTrafficDataInner](docs/V1DashboardOverviewGet200ResponseTrafficDataInner.md)
 - [ShionStream.Client\Model.V1DashboardRolesGet200Response](docs/V1DashboardRolesGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardRolesGet200ResponseRolesInner](docs/V1DashboardRolesGet200ResponseRolesInner.md)
 - [ShionStream.Client\Model.V1DashboardSeasonsGet200Response](docs/V1DashboardSeasonsGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardSeasonsGet200ResponseSeasonsInner](docs/V1DashboardSeasonsGet200ResponseSeasonsInner.md)
 - [ShionStream.Client\Model.V1DashboardStatsGet200Response](docs/V1DashboardStatsGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardStatsGet200ResponseStats](docs/V1DashboardStatsGet200ResponseStats.md)
 - [ShionStream.Client\Model.V1DashboardUsersGet200Response](docs/V1DashboardUsersGet200Response.md)
 - [ShionStream.Client\Model.V1DashboardUsersGet200ResponseUsersInner](docs/V1DashboardUsersGet200ResponseUsersInner.md)
 - [ShionStream.Client\Model.V1EpisodesIdStreamGet200Response](docs/V1EpisodesIdStreamGet200Response.md)
 - [ShionStream.Client\Model.V1EpisodesIdStreamGet200ResponseAudioInner](docs/V1EpisodesIdStreamGet200ResponseAudioInner.md)
 - [ShionStream.Client\Model.V1EpisodesIdStreamGet200ResponseEpisode](docs/V1EpisodesIdStreamGet200ResponseEpisode.md)
 - [ShionStream.Client\Model.V1EpisodesIdStreamGet200ResponseSourcesInner](docs/V1EpisodesIdStreamGet200ResponseSourcesInner.md)
 - [ShionStream.Client\Model.V1EpisodesIdStreamGet200ResponseSubtitlesInner](docs/V1EpisodesIdStreamGet200ResponseSubtitlesInner.md)
 - [ShionStream.Client\Model.V1ProtectedSampleGet200Response](docs/V1ProtectedSampleGet200Response.md)
 - [ShionStream.Client\Model.V1ProtectedSampleGet200ResponseUser](docs/V1ProtectedSampleGet200ResponseUser.md)
 - [ShionStream.Client\Model.V1ProtectedSampleGet401Response](docs/V1ProtectedSampleGet401Response.md)
 - [ShionStream.Client\Model.V1UploadHlsPost200Response](docs/V1UploadHlsPost200Response.md)
 - [ShionStream.Client\Model.V1UploadHlsPost200ResponseData](docs/V1UploadHlsPost200ResponseData.md)
 - [ShionStream.Client\Model.V1UploadImagePost200Response](docs/V1UploadImagePost200Response.md)
 - [ShionStream.Client\Model.V1UploadImagePost200ResponseData](docs/V1UploadImagePost200ResponseData.md)
 - [ShionStream.Client\Model.V1UserHistoryGet200Response](docs/V1UserHistoryGet200Response.md)
 - [ShionStream.Client\Model.V1UserHistoryGet200ResponseDataInner](docs/V1UserHistoryGet200ResponseDataInner.md)
 - [ShionStream.Client\Model.V1UserHistoryPostRequest](docs/V1UserHistoryPostRequest.md)
 - [ShionStream.Client\Model.V1UserProfileGet200Response](docs/V1UserProfileGet200Response.md)
 - [ShionStream.Client\Model.V1UserProfileGet200ResponseData](docs/V1UserProfileGet200ResponseData.md)
 - [ShionStream.Client\Model.V1UserProfileGet200ResponseDataActivity](docs/V1UserProfileGet200ResponseDataActivity.md)
 - [ShionStream.Client\Model.V1UserSettingsGet200Response](docs/V1UserSettingsGet200Response.md)
 - [ShionStream.Client\Model.V1UserSettingsGet200ResponseData](docs/V1UserSettingsGet200ResponseData.md)
 - [ShionStream.Client\Model.V1UserSettingsGet200ResponseDataNotifications](docs/V1UserSettingsGet200ResponseDataNotifications.md)
 - [ShionStream.Client\Model.V1UserSettingsGet200ResponseDataPlayer](docs/V1UserSettingsGet200ResponseDataPlayer.md)
 - [ShionStream.Client\Model.V1UserSettingsPatch200Response](docs/V1UserSettingsPatch200Response.md)
 - [ShionStream.Client\Model.V1UserSettingsPatchRequest](docs/V1UserSettingsPatchRequest.md)
 - [ShionStream.Client\Model.V1UserSettingsPatchRequestNotifications](docs/V1UserSettingsPatchRequestNotifications.md)
 - [ShionStream.Client\Model.V1UserSettingsPatchRequestPlayer](docs/V1UserSettingsPatchRequestPlayer.md)
 - [ShionStream.Client\Model.V1UserSettingsPatchRequestProfile](docs/V1UserSettingsPatchRequestProfile.md)
 - [ShionStream.Client\Model.V1UserWatchlistAnimeIdPatchRequest](docs/V1UserWatchlistAnimeIdPatchRequest.md)
 - [ShionStream.Client\Model.V1UserWatchlistGet200Response](docs/V1UserWatchlistGet200Response.md)
 - [ShionStream.Client\Model.V1UserWatchlistGet200ResponseDataInner](docs/V1UserWatchlistGet200ResponseDataInner.md)
 - [ShionStream.Client\Model.V1UserWatchlistPostRequest](docs/V1UserWatchlistPostRequest.md)


<a id="documentation-for-authorization"></a>
## Documentation for Authorization


Authentication schemes defined for the API:
<a id="Bearer"></a>
### Bearer


- **Type**: HTTP Bearer Token authentication (JWT / API-Key)

