#> asset:artifact/0987.ghost_step/click/teleport
#
#
#
# @within function asset:artifact/0987.ghost_step/click/check

# テレポートする
    tp @p[tag=this] ~ ~ ~

# 演出
    playsound block.respawn_anchor.deplete player @a ~ ~ ~ 1 1.5
    playsound ogg:entity.glow_squid.squirt3 player @a ~ ~ ~ 1 1.3
# 自害
    kill @s