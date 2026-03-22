#> asset:artifact/0361.rainbow_crystal/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0361.rainbow_crystal/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 255 255 255 1 ~ ~ ~ 15 0.25 15 0 1000 force @a
    stopsound @s * block.beacon.activate
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1
    playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1

# 敵の位置で演出
    execute at @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..30] run particle dust 255 255 255 0.5 ~ ~0.25 ~ 0.025 5 0.025 0 100 force @a

# 各属性でダメージ
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Physical",ElementType:"None"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Physical",ElementType:"Fire"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Physical",ElementType:"Water"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Physical",ElementType:"Thunder"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Magic",ElementType:"None"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Magic",ElementType:"Fire"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Magic",ElementType:"Water"}
    function asset:artifact/0361.rainbow_crystal/trigger/damage.m {AttackType:"Magic",ElementType:"Thunder"}
