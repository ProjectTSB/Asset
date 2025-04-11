#> asset:object/2186.heiloang_ff_floor/tick/opacity
#
# Objectのtick時の処理
#
# @within asset:object/2186.heiloang_ff_floor/tick/

# アニメーション
    scoreboard players set $Opacity Temporary 250
    execute store result entity @s text_opacity int 1 run scoreboard players operation $Opacity Temporary -= @s General.Object.Tick

# リセット
    scoreboard players reset $Opacity
