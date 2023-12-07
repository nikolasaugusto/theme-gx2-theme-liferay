<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
    <header>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <#if (grupobanner01.banner01.getData())?? && grupobanner01.banner01.getData() !="">
                    <img class="img-fluid w-100 d-md-block d-none" alt="${grupobanner01.banner01.getAttribute("alt")}" data-fileentryid="${grupobanner01.banner01.getAttribute("fileEntryId")}" src="${grupobanner01.banner01.getData()}" />
                </#if>
                <#if (grupobanner01.Imagecell01.getData())?? && grupobanner01.Imagecell01.getData() !="">
                    <img class="img-fluid w-100 d-md-none d-sm-block" alt="${grupobanner01.Imagecell01.getAttribute("alt")}" data-fileentryid="${grupobanner01.Imagecell01.getAttribute("fileEntryId")}" src="${grupobanner01.Imagecell01.getData()}" />
                </#if>
                <div class="carousel-caption d-none d-md-block d-md-none d-sm-block">
                    <#if (grupobanner01.textobanner01.getData())??>
                        <h2>
                            ${grupobanner01.textobanner01.getData()}
                        </h2>
                    </#if>
                </div>
            </div>
        </div>
    </header>
</div>