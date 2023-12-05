<div class="container CardsEstruturaSS">
    <div class="row">
        <#if Fieldset80130504.getSiblings()?has_content>
            <#list Fieldset80130504.getSiblings() as cur_Fieldset80130504>
                <div class="col-md-4 w-auto">
                    <div class="card">
                        <#if (cur_Fieldset80130504.Image93768638.getData())?? && cur_Fieldset80130504.Image93768638.getData() !="">
                            <img alt="${cur_Fieldset80130504.Image93768638.getAttribute("alt")}" data-fileentryid="${cur_Fieldset80130504.Image93768638.getAttribute("fileEntryId")}" src="${cur_Fieldset80130504.Image93768638.getData()}" />
                        </#if>
                        <div class="card-body">
                            <#if (cur_Fieldset80130504.Text14036897.getData())??>
                                <h5 class="card-title">
                                    ${cur_Fieldset80130504.Text14036897.getData()}
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