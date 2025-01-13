#> asset:mob/0237.lunatic_mage/tick/skill/magic/shoot_beam
#
# ビームの発射処理
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/magic/

# 演出
    execute positioned ^ ^ ^5 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^10 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^15 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^20 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^25 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^30 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^35 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^40 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx
    execute positioned ^ ^ ^45 run function asset:mob/0237.lunatic_mage/tick/skill/magic/vfx

# 音で相手の位置がわかるように
    execute as @a[distance=..50] at @s facing entity @e[type=zombie,tag=this,distance=..52] eyes positioned ^ ^ ^3 run function asset:mob/0237.lunatic_mage/tick/skill/magic/sound

# 再帰
    function asset:mob/0237.lunatic_mage/tick/skill/magic/beam_recursive

# ダメージ設定
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Magic
    data modify storage api: Argument.AttackType set value "Magic"
    function api:damage/modifier
    execute as @a[tag=LandingTarget,distance=..60] run function api:damage/
# リセット
    function api:damage/reset

# Tag削除
    tag @a[tag=LandingTarget,distance=..60] remove LandingTarget
