#> asset:object/1063.magic_circle_of_rebirth/tick/summon
#
#
#
# @within function asset:object/1063.magic_circle_of_rebirth/tick/

#> private
# @private
    #declare tag SpreadMarker

# ターゲットなしなら失敗
    execute if entity @s[tag=!TJ.Targeted] run function asset:object/1063.magic_circle_of_rebirth/tick/vfx/fail
    execute if entity @s[tag=!TJ.Targeted] run kill @s
    execute if entity @s[tag=!TJ.Targeted] run return fail

# データ設定
    # プレイヤーID
        execute store result storage api: Argument.FieldOverride.UserID int 1 run data get storage asset:context this.UserID
    # 角度 (前方拡散)
        # 拡散する
            execute anchored eyes positioned ^ ^ ^0.4 run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
            data modify storage lib: Argument.Distance set value 2.0
            data modify storage lib: Argument.Spread set value 0.1
            execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
        # マーカーの方を向く
            tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes
            data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
            kill @e[type=marker,tag=SpreadMarker,limit=1]
    # ダメージ
        data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage

# 召喚
    data modify storage api: Argument.ID set value 1064
    function api:object/summon
