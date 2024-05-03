// @arg x
// @arg y
// @arg origin
// @arg sprite
// @arg knickback
// @arg lifespan
// @arg dmg
// @arg xscale
function create_hitbox(x_position,y_position,creator,sprite,knockback,lifespan,damage,xscale)
{
var hitbox = instance_create_layer(x_position,y_position,"Instances", o_hitbox);
hitbox.sprite_index = sprite;
hitbox.creator = creator;
hitbox.origin = creator;
hitbox.knockback = knockback;
hitbox.alarm[0] = lifespan;
hitbox.damage = damage;
hitbox.image_xscale = xscale;
}