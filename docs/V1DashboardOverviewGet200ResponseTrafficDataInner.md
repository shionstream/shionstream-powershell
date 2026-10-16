# V1DashboardOverviewGet200ResponseTrafficDataInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Time** | **String** |  | 
**ActiveStreams** | **Decimal** |  | 
**BandwidthGbps** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardOverviewGet200ResponseTrafficDataInner = Initialize-ShionStream.ClientV1DashboardOverviewGet200ResponseTrafficDataInner  -Time null `
 -ActiveStreams null `
 -BandwidthGbps null
```

- Convert the resource to JSON
```powershell
$V1DashboardOverviewGet200ResponseTrafficDataInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

