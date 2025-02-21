#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.1.attack_iai_0
#
# アニメーションのイベントハンドラ 前半・居合斬り 1段目攻撃判定
#
# @within
#   function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
#   function asset:mob/0327.eclael/debug_damage

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-40 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0

# TODO：与えるダメージの調整
# ダメージ
    # ダメージ量
        data modify storage api: Argument.Damage set value 42f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage api: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function api:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset

# # 演出
#     data modify storage api: Argument.FieldOverride set value {Color:65518,Frames:[20335,20336,20337],Scale:[10f,10f,0.1f],Transformation:{left_rotation:[-0.26f,0.6f,-0.2f,0.65f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
#     data modify storage api: Argument.ID set value 2001
#     execute positioned ^ ^1.4 ^1 run function api:object/summon
