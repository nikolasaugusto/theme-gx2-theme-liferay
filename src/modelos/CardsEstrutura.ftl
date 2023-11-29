<div class="container CardsEstruturaSS">
    <div class="row">
        <#if Fieldset04327903.getSiblings()?has_content>
            <#list Fieldset04327903.getSiblings() as cur_Fieldset04327903>
                <div class="col-md-4 ">
                    <div class="card" style="width: 18rem;">
                        <#if (cur_Fieldset04327903.Image06617452.getData())?? && cur_Fieldset04327903.Image06617452.getData() !="">
                            <img alt="${cur_Fieldset04327903.Image06617452.getAttribute("alt")}" data-fileentryid="${cur_Fieldset04327903.Image06617452.getAttribute("fileEntryId")}" src="${cur_Fieldset04327903.Image06617452.getData()}" />
                        </#if>
                        <div class="card-body">
                            <#if (cur_Fieldset04327903.Text14849062.getData())??>
                                <h5 class="card-title">
                                    ${cur_Fieldset04327903.Text14849062.getData()}
                                </h5>
                            </#if>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            </#list>
        </#if>
    </div>
</div>