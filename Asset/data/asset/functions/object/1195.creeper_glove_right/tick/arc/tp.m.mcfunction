#> asset:object/1195.creeper_glove_right/tick/arc/tp.m
#
# 所有者の目を基準に、水平の向きで高さと前のずれを取り、円弧の角度とpitchへ回してから半径だけ進んだ位置へ移動する
#
# @within function asset:object/1195.creeper_glove_right/tick/arc/

$execute as @p[tag=1195.Owner,distance=..64] at @s anchored eyes positioned ^ ^ ^ rotated ~ 0 positioned ^ ^$(H) ^$(F) rotated ~$(Theta) $(Pitch) positioned ^ ^ ^$(R) positioned ~$(DX) ~$(DY) ~$(DZ) run tp @e[type=item_display,tag=this,distance=..64,limit=1] ~ ~ ~ $(Yaw) $(VisPitch)
