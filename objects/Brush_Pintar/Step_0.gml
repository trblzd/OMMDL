/// @description Logica
 if mouse_check_button(mb_left) {

    if (mouse_check_button(mb_left)) {
        paint_active = true;
    } else if (paint_active) {
        paint_active = false;
      }

    if (paint_active or paint_clear) {
        surf_painting_update = true;
     }
    }