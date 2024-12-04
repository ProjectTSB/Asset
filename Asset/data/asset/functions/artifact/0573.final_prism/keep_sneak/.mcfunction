#> asset:artifact/0573.final_prism/keep_sneak/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/573/keep_sneak/

#> SpreadLib
# @private
    #declare tag SpreadMarker

# 疑似乱数取得
    execute store result score $Random Temporary run function lib:random/
# ほしい範囲に剰余算
    scoreboard players operation $Random Temporary %= $4 Const
# ここから先は神器側の効果の処理を書く
    data modify storage lib: Argument.Distance set value 10.0f

# 精度をスニーク時間に
    scoreboard players set $Spread Temporary 45
    execute store result score $SneakTime Temporary run data get storage asset:context SneakTime.mainhand 1
    scoreboard players operation $Spread Temporary -= $SneakTime Temporary

# マイナスになるとやばいんだって
    execute if score $Spread Temporary matches ..0 run scoreboard players set $Spread Temporary 1

# スコアを精度に
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    execute store result storage lib: Argument.Spread float 0.05 run scoreboard players get $Spread Temporary
    data modify storage lib: Argument.Distance set value 10.0f
    execute as @e[type=marker,tag=SpreadMarker,limit=1] at @p[tag=this] anchored eyes positioned ^ ^ ^ run function lib:forward_spreader/circle

# 非収束ビーム
    execute if score $Spread Temporary matches 2.. facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes anchored eyes positioned ^ ^-0.25 ^ run function asset:artifact/0573.final_prism/keep_sneak/laser
    # ダメージ設定
        execute if score $Spread Temporary matches 2.. run data modify storage lib: Argument.Damage set value 45f

# 完全収束ビーム
    execute if score $Spread Temporary matches ..1 facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes anchored eyes positioned ^ ^-0.25 ^ run function asset:artifact/0573.final_prism/keep_sneak/final_laser
    execute if score $Spread Temporary matches 2 anchored eyes positioned ^ ^ ^1 run function asset:artifact/0573.final_prism/keep_sneak/vfx/final_start
    # ダメージ設定
        execute if score $Spread Temporary matches ..1 run data modify storage lib: Argument.Damage set value 65f

# サウンド
    execute if score $Spread Temporary matches 2.. run function asset:artifact/0573.final_prism/keep_sneak/vfx/normal_laser
    execute if score $Spread Temporary matches ..1 run function asset:artifact/0573.final_prism/keep_sneak/vfx/final_laser


# ダメージはここで実行
    function asset:artifact/0573.final_prism/keep_sneak/damage

# リセット
    scoreboard players reset $Random Temporary
    scoreboard players reset $Spread Temporary
    scoreboard players reset $SneakTime Temporary
    kill @e[type=marker,tag=SpreadMarker]
