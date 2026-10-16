# V1DashboardStatsGet200ResponseStats
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalAnime** | **Decimal** |  | 
**TotalEpisodes** | **Decimal** |  | 
**TotalUsers** | **Decimal** |  | 
**PendingReports** | **Decimal** |  | 
**ActiveStreams** | **Decimal** |  | 
**BandwidthUsageGb** | **Decimal** |  | 
**CpuLoadPercent** | **Decimal** |  | 
**StorageUsedGb** | **Decimal** |  | 
**MonthlyGrowthPercent** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardStatsGet200ResponseStats = Initialize-ShionStream.ClientV1DashboardStatsGet200ResponseStats  -TotalAnime null `
 -TotalEpisodes null `
 -TotalUsers null `
 -PendingReports null `
 -ActiveStreams null `
 -BandwidthUsageGb null `
 -CpuLoadPercent null `
 -StorageUsedGb null `
 -MonthlyGrowthPercent null
```

- Convert the resource to JSON
```powershell
$V1DashboardStatsGet200ResponseStats | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

