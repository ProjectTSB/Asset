#> asset:artifact/1033.thelema_of_blue_sea/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Health

# 攻撃回数スコアを増やす
    scoreboard players add @s SP.AttackCount 1

# デバッグ用
    #scoreboard players set @s SP.AttackCount 1

# 次の段階までの待機時間のスコア
    scoreboard players set @s SP.WaitingTime 40

# 演出用AECを召喚
    execute anchored eyes positioned ^ ^-0.3 ^2 run summon area_effect_cloud ~ ~ ~ {Tags:["SP.Entity","SP.VFXEntity","SP.Init","Object"],Particle:"block air",Duration:10}

# 3回目の攻撃の時、追撃用のAECを設置
    execute if entity @s[scores={SP.AttackCount=3}] at @e[type=#lib:living,tag=Victim,distance=..6] rotated as @s run summon area_effect_cloud ~ ~ ~ {Tags:["SP.Entity","SP.PersuitEntity","SP.Init","Object"],Particle:"block air",Duration:40}

# entityのinit処理
    execute as @e[type=area_effect_cloud,tag=SP.Init,distance=..6,limit=2] at @s run function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/init

# ダメージ 基礎火力+現在体力の100%
    function api:data_get/health
    execute store result score $Health Temporary run data get storage api: Health 1.0
    execute store result storage api: Argument.Damage int 1.0 run scoreboard players operation $Health Temporary += $300 Const
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# スケジュールループを起動
    schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/loop 1t replace
    schedule function asset:artifact/1033.thelema_of_blue_sea/trigger/loop 1t replace

# 攻撃回数が3ならスコアをリセット
    execute if entity @s[scores={SP.AttackCount=3..}] run scoreboard players reset @s SP.WaitingTime
    execute if entity @s[scores={SP.AttackCount=3..}] run scoreboard players reset @s SP.AttackCount

# リセット
    scoreboard players reset $Health Temporary
