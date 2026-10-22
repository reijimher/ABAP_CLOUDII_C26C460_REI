@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sesion Variable'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{ 
        serviceQuality: #X,
        sizeCategory: #S,
        dataClass: #MIXED
}
define view entity ZI_CDS_03_REI 
as select from /dmo/customer

{
    key customer_id as Customer_ID,
    //'Dummy' as Dummy
    $session.client as ClientField,
    //$session.bs_instance_id as InstansField,
    //$session.bs_zone_id as zoneField,
    $session.system_date as sysdatefield,
    $session.system_language as syslenField,
    $session.user as userField,
    $session.user_date as userdateField,
    $session.user_timezone as timeField,
    $projection.ClientField as Cl
    
 }
