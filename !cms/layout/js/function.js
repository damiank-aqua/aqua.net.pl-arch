function validation($form){

    $($form + ' .text-danger').remove();

    var $icon = $('#warning-icon').html();

    var $submit = true;
    $($form + ' .validation').each(function(){

        if($(this).attr('class').indexOf(':') > -1){

            var $check = true;

            var $classValidation = $(this).attr('class');

            $typeValidation = $classValidation.split(':')[1];

            //!!!Define type of validation field
            if($typeValidation === 'text')
                $check = text($(this).val());

            if($typeValidation === 'select')
                $check = select($(this).val());

            if($typeValidation === 'email')
                $check = email($(this).val());

            if($typeValidation === 'icon')
                $check = icon($(this).val());

            if($typeValidation === 'password')
                $check = password($(this).val());

            if($typeValidation === 'file')
                $check = file($(this).val());

            if($typeValidation === 'source')
                $check = source($(this).val());

            if($typeValidation.indexOf( 'textarea') > -1)
                $check = textarea($(this).parent().find('.tox-tinymce').find('.tox-edit-area').html());

            if(!$check){

                $(this).after($icon);

                $submit = false;
            }

        }

    });

    return $submit;

}
function processButton($this){

    $this.children('i').remove();

    $this.append($('#process-button').html());

    setTimeout(function () {
        $this.children('i').fadeOut();
    }, 500);

}
function currentSystem($interval){

    setInterval(function(){

        $('#current-system .animated').toggleClass('flash');

    }, $interval);

}
function initSection($start, $time) {

    $('#process').show();

    setTimeout(function() {

        $('body').animate({
            opacity: 1
        }, $time, function () {

            $('#process').fadeOut();

        });

    }, $start);

}

function modalInit($this){

    var $modalData = $this.parent().find('.modal-data');

    if($modalData) {

        var $modalDataJson = $modalData.text();

        $modalData = JSON.parse($modalDataJson);

        $('#modal .modal-body').text($modalData.text);

        $('#modal').modal();

        modalButton($this, $modalData.save, $modalData.cancel);

    }

}

function modalButton($this, $save, $cancel){

    $('.modal-button').click(function(){

        if($(this).attr('id') === 'modal-cancel') {

            if($cancel !== '') {
                //List of events fix to cancel
                if ($cancel === 'reload') {

                    window.location = $('#url-full').val();

                }
                if ($cancel === 'this-option-reset') {

                    //Nice select plugin are specify dom structure
                    $this.next().children('.current').text($('#url-system').val());

                    $this.next().children('.list').children('li').each(function(){

                        if($(this).text() === $('#url-system').val()) {

                            $(this).addClass('selected');

                        }else{

                            $(this).removeClass('selected');

                        }

                    });

                }
            }

        }
        if($(this).attr('id') === 'modal-save') {

            if($save !== '') {
                //List of events fix to cancel
                if ($save === 'link-this-val') {

                    window.location = $this.val();

                }
                if ($save === 'submit-next-form') {

                    $this.next().submit();

                }

            }

        }

    });

}

var $dataTableName;
function dataTables() {

    var $arrow = $('#arrow-type').html().split(',');

    $dataTableName = $('.data-table').DataTable({
        'pagingType': 'full_numbers',
        'stateSave': true,
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],
        "ordering": false,
        'language': {
            'url': 'content/box/table/polish.json',
            'oPaginate': {
                'sFirst': $arrow[0],
                'sPrevious': $arrow[1],
                'sNext': $arrow[2],
                'sLast': $arrow[3]
            }
        }
    });

}
function niceSelect() {

    $('.select').niceSelect();

}
function gallery() {

    //At the end init gallery effect
    $('a[data-rel^=lightcase]').lightcase();

}
function activeMenu() {

    if($('.navbar li.active').length === 0) {

        $('.navbar').find($('#' + $('#url-section').val())).parents('.nav-item').addClass('active');

    }
}
function closeAlertTop() {

    if($('.im-alert-top').length > 0) {

        var $alert = $('.im-alert-top');

        setTimeout(function(){

            $alert.slideUp();

        }, 10000);

    }

}
function datepicker() {

    $('.im-datepicker').datepicker();

    $('.im-datepicker').val($('.im-datepicker').next().val());

}

function editor() {

    if ($('.editor').length > 0) {

        tinymce.init({
            selector: '.editor',
            height: 300,
            menubar: false,
            plugins: "code emoticons lists table wordcount link image preview",
            toolbar: 'undo redo | fontsizeselect | bold italic underline strikethrough superscript subscript forecolor backcolor bullist | alignleft aligncenter alignright alignjustify | image link table emoticons | code | wordcount | preview',
            valid_elements: '*[*]'
        });

    }

}
function switchStatus($this) {

    var $class = $this.children().attr('class');

    if($class.indexOf('-on') > -1) {

        var $switchStatus = 'off';

        var $classNew = $class.replace('on', $switchStatus);

        $classNew = $classNew.replace('info', 'secondary');

    }

    if($class.indexOf('-off') > -1) {

        var $switchStatus = 'on';

        var $classNew = $class.replace('off', $switchStatus);

        $classNew = $classNew.replace('secondary', 'info');

    }

    return [$switchStatus, $classNew];

}

var $currentShow = 10;
function currentShow() {

    $dataTableName.on('draw', function() {

        var $select = $('.dataTables_length select').val();

        if($select != -1)
            $currentShow = $select;

    });

}
function sortStatus($this) {

    $this.hide();

    $this.next().show();

    var $sortable = document.getElementById('sortable');

    $dataTableName.page.len(-1).draw();

    $('.dataTables_length label, .data-table tbody a, .add-new, .filter-box, .dataTables_filter').css('opacity', 0);

    var $sortableCurrent = new Sortable($sortable, {
        animation: 150
    });

    $('#sort-save').click(function(){

        saveSort($dataTableName, $currentShow);

    });

    $('#sort-cancel').click(function(){

        $('body').css('opacity', 0);

        $dataTableName.page.len($currentShow).draw();

        window.location = $('#url-full').val();

    });

}
function copyField($this) {

    var $places = $this.split(':');

    $('#' + $places[1]).val($('#' + $places[0]).val());

}
function fix() {

    var $search = $('#search-fix').val();

    $('.edit .collection').each(function() {

        var $this = $(this);

        var $select = document.getElementById($this.attr('id'));

        var $titleArray = $this.attr('title').split(':');

        multi($select, {
            non_selected_header: $titleArray[0],
            selected_header: $titleArray[1],
            enable_search: true,
            search_placeholder: $search
        });

    });

}
function fixSort($this) {

    var $id = $this.attr('id') + '-fix';

    var $next = $this.next().find('.selected-wrapper');

    $next.attr('id', $id);

    var $sortable = document.getElementById($id);

    new Sortable($sortable, {
        animation: 150
    });

}
function collection() {

    $('.edit .multi-wrapper').each(function() {

        var $this = $(this);

        var $currentId = '';
        $this.children('.selected-wrapper').children('a').each(function() {

            $currentId += ($(this).attr('data-value')) + ',';

        });

        if($currentId != '') {

            $currentId = $currentId.substring(0, $currentId.length - 1);

            $this.next().val($currentId);

        }else $this.next().val('0');

    });

}
function filter($value) {

    window.location = $('#url-system').val() + ',' + $('#url-section').val() + ',' + $value;

}
function scrollEvent() {

    var $window = $(window);

    $window.scroll(function() {

        if($window.scrollTop() > 200){

            $('#content-top').addClass('position-fixed');

            $('#scroll-top').fadeIn();

        }else{

            $('#content-top').removeClass('position-fixed');

            $('#scroll-top').fadeOut();

        }

    });

    $('#scroll-top').click(function(){

        $('html').animate({scrollTop: '0'}, 1000);

    });

}

function translationMove($target) {

    $('#translation-move').attr('action', $target);

    $('#translation-move').submit();

}