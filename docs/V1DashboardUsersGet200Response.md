# V1DashboardUsersGet200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Users** | [**V1DashboardUsersGet200ResponseUsersInner[]**](V1DashboardUsersGet200ResponseUsersInner.md) |  | 
**Total** | **Decimal** |  | 
**Page** | **Decimal** |  | 
**Limit** | **Decimal** |  | 

## Examples

- Prepare the resource
```powershell
$V1DashboardUsersGet200Response = Initialize-ShionStream.ClientV1DashboardUsersGet200Response  -Users null `
 -Total null `
 -Page null `
 -Limit null
```

- Convert the resource to JSON
```powershell
$V1DashboardUsersGet200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

