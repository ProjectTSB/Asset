#> asset:object/1165.bubble_spreader/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1165/kill

#> Private
# @private
    #declare score_holder $UserID

# 弾ける無数の泡（空気中でも綺麗に弾けるbubble_popを使用）
    particle minecraft:bubble_pop ~ ~ ~ 0.8 0.8 0.8 0.1 90 normal @a
# 泡を包み込む水色のオーラ（バグっていた数値を綺麗なクリアブルーに修正）
    particle minecraft:dust_color_transition 0.18 0.45 0.78 1.5 1.0 1.0 1.0 ~ ~ ~ 0.5 0.5 0.5 0 3 normal @a
# ポコポコと弾ける泡の音（ピッチを高めにして可愛らしい魔法の泡を演出）
    playsound minecraft:block.bubble_column.bubble_pop neutral @a ~ ~ ~ 0.5 1.5 0
    playsound minecraft:block.bubble_column.bubble_pop neutral @a ~ ~ ~ 0.5 2.0 0
# 弾けた時の水しぶきの音
    playsound minecraft:entity.player.splash neutral @a ~ ~ ~ 0.4 2.0 0

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set from storage asset:context this.AdditionalMPHeal
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=!Uninterferable,dx=0,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary

# 消滅
    kill @s
