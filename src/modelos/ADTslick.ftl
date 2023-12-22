<#if entries?has_content>

	 
	    <div class="slick-carousel">

        
            <#list entries as entry>
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent" )) />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <#assign categoryColors={ "História" : "#baffc9" , "Conjuntos" : "#ffdfba" , "Mídia" : "#bae1ff" , "Ação" : "#dbcdf0" , "Playground" : "#f2c6de" } />
                <div class="carousel-container h-100 w-100 position-relative">
									<div>
							<#assign imgField=DDMFormFieldsReferencesMap['Imagenoticia'].name />
                <#assign imgValue=DDMFormFieldValuesMap[imgField]
                    [0].getValue().getString(locale) />
                <#assign imgTop=imgValue?eval />
                <img class="carousel-img w-100" alt="imagem-web" src="${imgTop.url}">
										</div>
                <div class="carousel-information d-flex flex-column align-items-center align-items-md-start position-absolute text-center text-md-left">
                    <#assign titleField=DDMFormFieldsReferencesMap['titulodanoticia'].name />
                    <#assign title=DDMFormFieldValuesMap[titleField]
                        [0].getValue().getString(locale) />
                    ${title}
									
									<#assign titleField=DDMFormFieldsReferencesMap['titulodanoticia'].name />
                    <#assign title=DDMFormFieldValuesMap[titleField]
                        [0].getValue().getString(locale) />
                    ${title}
                </div>
									</div>
            </#list>
        
        </div>

</#if>

<style>
	.slick-carousel {
  position: relative;
  z-index: 1;
}

.slick-prev,
.slick-next {
  z-index: 2;
}

.slick-prev {
  left: 10px;
}

.slick-next {
  right: 10px;
}

.slick-track {
    display: flex !important;
}

.carousel-container {
  color: white;
}

.carousel-img {
  height: 100vh;
  object-fit: cover;
  display: block;
}

.carousel-title {
  font-size: 58px; 
  font-weight: bold; 
  display: inline-block; 
  width: 500px; 
  line-height: 1.2;
}

.carousel-description {
  font-size: 14px; 
  display: inline-block; 
  width: 304px; 
  word-wrap: break-word;
}

.carousel-information {
  padding: 0 auto;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  gap: 1.3rem;
  border-radius: 5px;
}

.carousel-button {
  height: 62px;
  width: 228px;
  background-color: #2dc071;
  font-size: 24px;
  color: white;
  border-radius: 4px;
}

@media (min-width: 768px) {
  .carousel-information {
    padding: 0 170px 0 170px;
    top: 50%;
    left: 0;
    transform: translate(0%, -50%);
    gap: 1rem;
    border-radius: 5px;
  }
}</style>

<script>
 $(document).ready(function () {
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