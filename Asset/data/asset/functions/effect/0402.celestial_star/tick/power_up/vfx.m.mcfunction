#> asset:effect/0402.celestial_star/tick/power_up/vfx.m
#
# 星の位置で強化を音で知らせる
#
# @input args
#   X : double
#   Y : double
#   Z : double
#   Pitch : float
# @within function asset:effect/0402.celestial_star/tick/power_up/

# 強化段階に応じた高さの音で強化を知らせる
    $playsound block.amethyst_block.chime player @a $(X) $(Y) $(Z) 2 $(Pitch)
    $playsound block.note_block.bell player @a $(X) $(Y) $(Z) 1 $(Pitch)
    $playsound block.respawn_anchor.charge player @a $(X) $(Y) $(Z) 1 $(Pitch)

# 最大まで強化したことを、強い音で知らせる
    $execute if data storage asset:context {Stack:6} run playsound block.beacon.activate player @a $(X) $(Y) $(Z) 2 1.6
    $execute if data storage asset:context {Stack:6} run playsound entity.player.levelup player @a $(X) $(Y) $(Z) 1 1.2
