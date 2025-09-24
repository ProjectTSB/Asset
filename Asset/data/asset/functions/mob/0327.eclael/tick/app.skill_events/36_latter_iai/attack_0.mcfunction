#> asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/attack_0
#
# アニメーションのイベントハンドラ
#
# @within
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main
#    function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/main_turn

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.2
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2

# ターゲット取得
    execute positioned ~ ~ ~ run tag @a[tag=!PlayerShouldInvulnerable,distance=..1] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.IaiLatter
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=93.Temp.AttackTarget] remove 93.Temp.AttackTarget

# 演出
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504],Scale:[8f,4f,3f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.2f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute rotated ~-60 ~-30 positioned ^ ^0.5 ^2 run function api:object/summon
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Item:{id:"stick"},Color:16777088,Frames:[20502,20503,20504],Scale:[8f,4f,3f],Transformation:{left_rotation:{axis:[0,0,1],angle:-0.2f},right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute rotated ~80 ~-40 positioned ^ ^0.5 ^1.5 run function api:object/summon
    execute rotated ~30 ~-20 positioned ^ ^1 ^1.5 rotated ~180 ~ run function asset:mob/0327.eclael/tick/app.skill_events/36_latter_iai/particle_jump
