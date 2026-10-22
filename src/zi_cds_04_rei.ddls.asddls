@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CD'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_04_REI
  as select from ZI_PurchaseReqItem
{
  key ItemId,
      PrId,
      ItemNumber,
      MaterialId,
      ShortText,
      //@Semantics.quantity.unitOfMeasure: 'Quantity'
      //Quantity,
      Unit,
      @Semantics.amount.currencyCode: 'Currency'
      UnitPrice,
      Currency,
      //@Semantics.amount.currencyCode: 'NetValue'
      //NetValue,
      DeliveryDate,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Header
}
