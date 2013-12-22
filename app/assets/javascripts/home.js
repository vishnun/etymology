$(document).ready(function () {

    var bindRootwordModal = function () {
        $("button[data-target-modal=rootword-modal]").on('click', function (event) {
            var rootword = $(this).find('.rootword-data').data('rootword');

            var modal = $('#rootword-modal');
            modal.find("[data-rootword='word']").text(rootword.word);
            modal.find("[data-rootword='meaning']").text(rootword.meaning);
            modal.find("[data-rootword='usages']").empty().append("<li>" + rootword.usages + "</li>");

            event.preventDefault();
        });
    };


    var bindNonRootwordModal = function () {
        $("button[data-target-modal=non-rootword-modal]").on('click', function (event) {
            var nonRootword = $(this).find('.non-rootword-data').data('non-rootword');
            nonRootword.rootword = $('#'+nonRootword.word).find('.rootword-data').data('rootword');

            var modal = $('#non-rootword-modal');
            modal.find("[data-non-rootword='word']").text(nonRootword.word);
            modal.find("[data-non-rootword='meaning']").text(nonRootword.meaning);
            var usagesEl = modal.find("[data-non-rootword='usages']");
            usagesEl.empty();
            for(var ind = 0; ind < nonRootword.usages.length; ind++) {
                usagesEl.append("<li>" + nonRootword.usages[ind] + "</li>");
            }
            modal.find("[data-non-rootword='rootword-data']").data('rootword', nonRootword.rootword);
            modal.find("[data-non-rootword='rootword']").text(nonRootword.rootword.word);

            event.preventDefault();
        });
    };

    bindRootwordModal();
    bindNonRootwordModal();
});


