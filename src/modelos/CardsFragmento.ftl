<div class="container">
    <div class="fragment_1 row ml-3">
        [#list 1..configuration.numbersCards as cur_numbersCard]
        <div class="card col-md-4" id="${cur_numbersCard_index}">
            <lfr-editable class="card-img" id="${cur_numbersCard_index}-image" type="image">
                <img class="card-img-top" src="..." alt="Card image cap">
            </lfr-editable>
            <div class="card-body ">
                <lfr-editable id="${cur_numbersCard_index}-title title" type="text">
                    <h5 class="card-title">Card title</h5>
                </lfr-editable>
                <lfr-editable id="${cur_numbersCard_index}-desc desc" type="rich-text">
                    <p type="text" type="rich-text" class="text-desc">
                        This is editable text that I can make bold or italic!
                    </p>
                </lfr-editable>
                <lfr-editable id="${cur_numbersCard_index}" type="link">
                    <div class=" d-flex justify-content-end ">
                        <a href="#" class="btn btn-primary ">Go somewhere</a>
                    </div>
                </lfr-editable>
            </div>
        </div>
        [/#list]
    </div>
</div>