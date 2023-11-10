#> asset:artifact/1034.eiya/trigger/6.damage2
#
# 9段目のダメージ
#
# @within function asset:artifact/1034.eiya/trigger/4.skill_active

# TODO 後でこれ消す
# 補正無し想定DPS 1200くらい
# 参考: 1周127tick 最大MP300想定
# 8段目発生までが79tick

# バランス調整で強すぎた場合、基礎火力を下げてほしい
# 弱すぎたら加算MP倍率を上げてほしい

#> Private
# @private
    #declare score_holder $MP
    #declare score_holder $BaseDamage
    #declare tag Target

# 基礎火力設定(本来の10倍の値)
    scoreboard players set $BaseDamage Temporary 3500

# 現在MPの10×1.2倍を取得
    # function api:mp/get_current
    # execute store result score $MP Temporary run data get storage api: Return.CurrentMP 12

# ターゲット設定
    execute positioned ^2 ^ ^1 run tag @e[type=#lib:living,type=!player,distance=..2.5] add Target
    execute positioned ^ ^ ^3 run tag @e[type=#lib:living,type=!player,distance=..3.5] add Target
    execute positioned ^-2 ^ ^1 run tag @e[type=#lib:living,type=!player,distance=..2.5] add Target

# ダメージ設定
    execute store result storage lib: Argument.Damage double 0.1 run scoreboard players operation $BaseDamage Temporary += $MP Temporary
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Target,distance=..10] run function lib:damage/
    function lib:damage/reset

# リセット
    scoreboard players reset $MP Temporary
    scoreboard players reset $BaseDamage Temporary
    tag @e[type=#lib:living,tag=Target,distance=..10] remove Target