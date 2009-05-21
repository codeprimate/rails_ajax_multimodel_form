function show_nested_form_animation(object_name) {
    $(object_name + "_form_loading_animation").show();
    $('add_' + object_name + '_link').hide();
    return false;
}

function hide_nested_form_animation(object_name) {
    $(object_name + "_form_loading_animation").hide();
    $('add_' + object_name + '_link').show();
    return false;
}