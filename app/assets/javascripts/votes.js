



jQuery(function($) {

//$('.right-content a[data-type=json]').on('ajax:success', function(event, data, status, xhr) {
//  var path = $(this)[0].pathname;
//  regex = (new RegExp(/^\/photos\/(.*)\/(.*)$/)).exec(path);
//  var like = method == 'like' ? '1' : '0';
//  var new_status = like == '1' ? 'unlike' : 'like';
//
//});
//    function csrf_token(){
//        return $('meta[name=csrf-token]').attr('content');
//    }
//    function csrf_param(){
//        return $('meta[name=csrf-param]').attr('content');
//    }



$('.right-content a').click(function(event){
           event.preventDefault();
           var path = $(this)[0].pathname;
           regex = (new RegExp(/^\/photos\/(.*)\/(.*)$/)).exec(path);
           var photo_id = regex[1];
           var method = regex[2];
           var like = method == 'like' ? '1' : '0';
           var new_status = like == '1' ? 'unlike' : 'like';
           var link = $(this);
           var form_path = '/photos/'+photo_id+'/'+new_status;

           var params = {};
//           params[class_name] = {'like_type' : like };
//           params[csrf_param()] = csrf_token();
           $.ajaxSetup({
              url: form_path,
              type: "POST",
              cache: false,
              dataType: "json",
            });
           $.ajax({data: params, success: function(data){

               alert(data);
//               alert(params);
               var result = data == null ? '0' : data;
//               alert(result);
               link.parents('div.liker').find('div.count').html(data);
               link.fadeOut();
               link.attr("href", form_path);
               link.html(new_status).fadeIn();
           }, beforeSend: function(){
               link.fadeOut();
               link.html('Working...').fadeIn();
           } });
       });
});