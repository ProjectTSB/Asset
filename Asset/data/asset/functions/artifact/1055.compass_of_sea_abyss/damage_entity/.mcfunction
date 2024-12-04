#> asset:artifact/1055.compass_of_sea_abyss/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1055/damage_entity/


#> Private
# @private
    #declare score_holder $SelfDamage

# 演出
    execute positioned ~ ~0.2 ~ rotated ~ 0 run function asset:artifact/1055.compass_of_sea_abyss/damage_entity/vfx_compass
    execute at @e[type=#lib:living,tag=Enemy,distance=..8,sort=nearest,limit=5] run particle dust 0 0 -1 1.4 ~ ~1.2 ~ 0.4 0.5 0.4 0 50 normal @a
    playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.8 0.8 0
    playsound minecraft:entity.allay.ambient_without_item player @a ~ ~ ~ 0.8 0.5

# 仕様
# 発動時、現在体力の10%分ダメージを受け、
# 効果で受けたダメージ2につき、MPを2回復&周囲の敵に120ダメージ
# 被ダメは最低2、最大20

# 自身の現在体力を取得する
    function api:data_get/health

# 現在体力の100%分をスコア化する
# ダメージの少数部分も考慮して本来与えるダメージの10倍で取得している
    execute store result score $SelfDamage Temporary run data get storage api: Health

# 値の範囲を超えないように
    scoreboard players operation $SelfDamage Temporary > $20 Const
    scoreboard players operation $SelfDamage Temporary < $200 Const

# 現在体力の10%分の固定ダメージを受ける
# 固定ダメージのため属性は意味ないけど雰囲気で
    execute store result storage api: Argument.Damage float 0.1 run scoreboard players get $SelfDamage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.FixedDamage set value true
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは海淵へ消えた","with":[{"selector":"@s"}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 自傷ダメ2につき、という効果なので20で割る
    scoreboard players operation $SelfDamage Temporary /= $20 Const

# $SelfDamage * 2だけMPを回復
    execute store result storage api: Argument.Fluctuation int 2 run scoreboard players get $SelfDamage Temporary
    function api:mp/fluctuation

# $SelfDamage * 120だけ周囲の敵5体にダメージ
    execute store result storage api: Argument.Damage int 120 run scoreboard players get $SelfDamage Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,distance=..8,sort=nearest,limit=5] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $SelfDamage Temporary
