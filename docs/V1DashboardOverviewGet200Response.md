# V1DashboardOverviewGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TrafficData** | [**V1DashboardOverviewGet200ResponseTrafficDataInner[]**](V1DashboardOverviewGet200ResponseTrafficDataInner.md) |  | 
**RecentActivities** | [**V1DashboardOverviewGet200ResponseRecentActivitiesInner[]**](V1DashboardOverviewGet200ResponseRecentActivitiesInner.md) |  | 
**Notifications** | [**V1DashboardOverviewGet200ResponseNotificationsInner[]**](V1DashboardOverviewGet200ResponseNotificationsInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardOverviewGet200Response = Initialize-ShionStream.ClientV1DashboardOverviewGet200Response  -TrafficData null `
 -RecentActivities null `
 -Notifications null
```

- Convert the resource to JSON
```powershell
$V1DashboardOverviewGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

