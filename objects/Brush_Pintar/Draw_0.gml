/// @description Desenhar na tela
    if surf_painting_update {
        if !surface_exists(surf_painting) {
            surf_painting = surface_create(w_width, w_height);
        }
        
        surface_set_target(surf_painting);
        
        if paint_active{
            draw_circle_color(mouse_x, mouse_y, paint_width, global.vColor[|paint_color], global.vColor[|paint_color], false);
        }
        
        if paint_clear {
            draw_clear_alpha(c_black, 0)
            paint_clear = false;
        }
        
        surface_reset_target();
        surf_painting_update = false;
    }