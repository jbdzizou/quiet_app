// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

/*$(document).ready(function() {
    // #(ハッシュ)指定されたタブを表示する
    
        var hashTabName = document.location.hash;
        if (hashTabName) {
            $('.nav-tabs a[href=' + hashTabName + ']').tab('show');
        }
});
*/
/*
<script type="text/javascript">
    $(function() {
        var hash = document.location.hash;
        if (hash) {
        $('.nav-tabs a[href='+hash+']').tab('show');
        }

        $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
            window.location.hash = e.target.hash;
        });
    });
</script>
*/

// #(ハッシュ)指定されたタブを表示する
var hash = document.location.hash;

if (hash) {
		$('.nav-tabs a[href="' + hash + '"]').tab('show');
	}
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        e.target // newly activated tab
        e.relatedTarget // previous active tab
	});
;