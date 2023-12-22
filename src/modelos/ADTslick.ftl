<#if entries?has_content>
  <div class="slick-carousel">
    <#list entries as entry>
      <#assign assetRenderer=entry.getAssetRenderer() />
      <#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
      <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent" )) />
      <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
      <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
      <#assign categoryColors={ "Esportes" : "#baffc9" , "Politica" : "#ffdfba" , "Tecnologia" : "#bae1ff" , "Lazer" : "#dbcdf0" , "Saúde" : "#f2c6de" } />
      <div class="container-fluid">
        <div>
          <#assign imgField=DDMFormFieldsReferencesMap['Imagenoticia'].name />
          <#assign imgValue=DDMFormFieldValuesMap[imgField]
            [0].getValue().getString(locale) />
          <#assign imgTop=imgValue?eval />
          <img class="img-fluid w-100" alt="imagem-web" src="${imgTop.url}">
        </div>
        <a href="${viewURL}">
          <#assign titleField=DDMFormFieldsReferencesMap['titulodanoticia'].name />
          <#assign title=DDMFormFieldValuesMap[titleField]
            [0].getValue().getString(locale) />
          <h5>
            ${title}
          </h5>
        </a>
        <div class="">
          <#assign titleField=DDMFormFieldsReferencesMap['descricao'].name />
          <#assign title=DDMFormFieldValuesMap[titleField]
            [0].getValue().getString(locale) />
          <p>
            ${title}
          </p>
        </div>
        <span>
          <#assign titleField=DDMFormFieldsReferencesMap['Datapublicao'].name />
          <#assign title=DDMFormFieldValuesMap[titleField]
            [0].getValue().getString(locale) />
          ${title}
          <#assign titleField=DDMFormFieldsReferencesMap['nomeautor'].name />
          <#assign title=DDMFormFieldValuesMap[titleField]
            [0].getValue().getString(locale) />
          ${title}
        </span>
        <div class="">
          <#list AssetCategoryLocalService.getEntryCategories(entry.getEntryId()) as entryCat>
            <#assign categoryName=entryCat.getName()?trim />
            <#assign categoryColor=categoryColors[categoryName]!'' />
            <p class="cats m-0" style="background-color: ${categoryColor}; color: black;">
              ${entryCat.getName()}
            </p>
          </#list>
        </div>
      </div>
    </#list>
  </div>
</#if>


<script>
$(document).ready(function() {
    $(".slick-carousel").slick({
      dots: true,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      slidesToScroll: 1,
      arrows: true,
      autoplay: true,
    });
  });
  </script>