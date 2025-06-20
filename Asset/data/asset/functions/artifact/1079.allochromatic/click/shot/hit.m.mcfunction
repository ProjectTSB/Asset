#> asset:artifact/1079.allochromatic/click/shot/hit.m
# @input args
#   Base: int
#   Min: int
#   DistanceAppropriate: int
#   DistanceAttenuation: int
# @within function asset:artifact/1079.allochromatic/click/shot/recursive.m

# 演出
    particle firework ~ ~1.2 ~ 0 0 0 0.3 10
# プレイヤーからの距離を取得
    execute as @a[tag=this,limit=1] run function lib:distance/as_to_at
# ダメージ計算
# $Damage (e1) = max( Base(e1) - max( Distance(e1) - DistanceAppropriate(e1) , 0 ) * DistanceAttenuation * ( MultiplierResonance(e2) || e2 ) , Min(e1) )
    # 基礎値
        $scoreboard players set $TZ.Temp1 Temporary $(Base)0
    # 距離減衰
        execute store result score $TZ.Temp2 Temporary run data get storage lib: Return.Distance 10
        $scoreboard players set $TZ.Temp3 Temporary $(DistanceAppropriate)0
        scoreboard players operation $TZ.Temp2 Temporary -= $TZ.Temp3 Temporary
        scoreboard players operation $TZ.Temp2 Temporary > $0 Const
    # 減衰計算
        $scoreboard players set $TZ.Temp4 Temporary $(DistanceAttenuation)
        scoreboard players operation $TZ.Temp2 Temporary *= $TZ.Temp4 Temporary
        scoreboard players operation $TZ.Temp1 Temporary -= $TZ.Temp2 Temporary
    # 共鳴
        scoreboard players set $TZ.Temp5 Temporary 100
        execute if function asset:artifact/1079.allochromatic/predicate/has_resonance store result score $TZ.Temp5 Temporary run data get storage asset:temp TZ.Const.Damage.MultiplierResonance 100
        scoreboard players operation $TZ.Temp1 Temporary *= $TZ.Temp5 Temporary
        scoreboard players operation $TZ.Temp1 Temporary /= $100 Const
    # 最小値補正
        $scoreboard players set $TZ.Temp6 Temporary $(Min)0
        scoreboard players operation $TZ.Temp1 Temporary > $TZ.Temp6 Temporary
# ダメージ処理
    execute store result storage api: Argument.Damage double 0.10 run scoreboard players get $TZ.Temp1 Temporary
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute as @a[tag=this,limit=1] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
# 追撃
    function asset:artifact/1079.allochromatic/click/shot/summon_resonance_attack
# リセット
    scoreboard players reset $TZ.Temp1 Temporary
    scoreboard players reset $TZ.Temp2 Temporary
    scoreboard players reset $TZ.Temp3 Temporary
    scoreboard players reset $TZ.Temp4 Temporary
    scoreboard players reset $TZ.Temp5 Temporary
    scoreboard players reset $TZ.Temp6 Temporary
