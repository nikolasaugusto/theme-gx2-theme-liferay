<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <blockquote class="blockquote">
                <h1 class="text-center">
                    <#if (titulodanoticia.getData())??>
                        ${titulodanoticia.getData()}
                    </#if>
                </h1>
                <div class="img-fluid text-center" alt="Responsive image">
                    <#if (Imagenoticia.getData())?? && Imagenoticia.getData() !="">
                        <img alt="${Imagenoticia.getAttribute("alt")}" data-fileentryid="${Imagenoticia.getAttribute("fileEntryId")}" src="${Imagenoticia.getData()}" />
                    </#if>
                </div>
                <h5 class="text-center">
                    <#if (nomeautor.getData())??>
                        ${nomeautor.getData()}
                    </#if>
                    <#assign Datapublicao_Data=getterUtil.getString(Datapublicao.getData())>
                        <#if validator.isNotNull(Datapublicao_Data)>
                            <#assign Datapublicao_DateObj=dateUtil.parseDate("yyyy-MM-dd", Datapublicao_Data, locale)>
                                ${dateUtil.getDate(Datapublicao_DateObj, "dd MMM yyyy", locale)}
                        </#if>
                </h5>
                <p class="mb-0">
                    <#if (textodanoticia.getData())??>
                        ${textodanoticia.getData()}
                    </#if>
                </p>
            </blockquote>
        </div>
    </div>
</div>