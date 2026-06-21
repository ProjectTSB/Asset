#> asset:artifact/1581.reactor_plate/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1581.reactor_plate/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 特定 ID の Effect 情報を取得
    data modify storage api: Argument.ID set value 377
    function api:entity/mob/effect/get/from_id
# クリティカルかつスタックがあるなら特殊攻撃に分岐
    execute if data storage asset:context Attack{Crit:true} if data storage api: Return.Effect run return run function asset:artifact/1581.reactor_plate/trigger/crit

# 基礎ダメージとバフ量指定(Damage+Baf*スタック数=与ダメ)
    scoreboard players set $17X.Damage Temporary 600
    scoreboard players set $17X.Baf Temporary 80

# 計算処理
    function asset:artifact/1581.reactor_plate/trigger/calculate

# 演出
    execute at @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function asset:artifact/1581.reactor_plate/trigger/vfx/normal
    execute anchored eyes positioned ^ ^ ^1.3 positioned ~ ~-0.5 ~ run function asset:artifact/1581.reactor_plate/trigger/vfx/normal_slash

# ダメージ(計算機構でダメージ量は指定)
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset

# スタック付与
    data modify storage api: Argument.ID set value 377
    data modify storage api: Argument.Duration set value 300
    data modify storage api: Argument.Stack set value 1
    data modify storage api: Argument.DurationOperation set value "forceReplace"
    data modify storage api: Argument.StackOperation set value "add"
    data modify storage api: Argument.FieldOverride.Damage set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
