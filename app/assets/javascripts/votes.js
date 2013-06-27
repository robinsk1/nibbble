jQuery(function($) {

    $('.right-content a').click(function(event){
           event.preventDefault();
           var path = $(this)[0].pathname;
           regex = (new RegExp(/^\/photos\/(.*)\/(.*)$/)).exec(path);
           var photo_id = regex[1];
           var method = regex[2];
           var like = method == 'like' ? '1' : '0';
           var new_status = like == '1' ? 'unlike' : 'like';
           var link = $(this);
           var form_path = '/photos/'+photo_id+'/'+method;
           var params = {};
           $.ajaxSetup({
              url: form_path,
              type: "POST",
              cache: false,
              dataType: "json"
            });
           $.ajax({data: params, success: function(data){
               var result = data == null ? '0' : data;
               link.parents('div.liker').find('div.count').html(data);
               link.fadeOut();
               link.attr("href", link.attr('href').replace(method, new_status));
               link.html(new_status).fadeIn();
           }, beforeSend: function(){
               link.fadeOut();
               link.html('Working...').fadeIn();
           } });
       });
});