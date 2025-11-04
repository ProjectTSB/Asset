#> asset:mob/0411.behemoth/tick/event/flarebreath/attack
#
# フレアブレス
#
# @within
#    function asset:mob/0411.behemoth/tick/event/flarebreath/
#    function asset:mob/0411.behemoth/tick/event/terzetto_disaster/
#    function asset:mob/0411.behemoth/tick/event/terzetto_ragnarok/

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 3 0.7
    playsound entity.wither.shoot hostile @a ~ ~ ~ 3 0.5
    playsound entity.wither.hurt hostile @a ~ ~ ~ 3 0.5

# ヒット判定
    data modify storage lib: args.dx set value 4
    data modify storage lib: args.dy set value 5
    data modify storage lib: args.dz set value 25
    data modify storage lib: args.selector set value "@a[tag=!PlayerShouldInvulnerable,distance=..50]"
    execute positioned ^ ^ ^25 run function lib:rotatable_dxyz/m with storage lib: args
# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.FlareBreath
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=DXYZ] run function api:damage/
    function api:damage/reset
    tag @a[tag=DXYZ] remove DXYZ

# 口元
    execute as @e[type=item_display,tag=BF.ModelRoot,sort=nearest,limit=1] at @s on passengers if entity @s[tag=aj.global.data] run function asset:mob/0411.behemoth/tick/event/flarebreath/effect_flame.m with entity @s data.locators.pos_head

# 着弾
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgIxEBsAzGQAwAsAtGQGZkDGLTA7AE4+LAbQoBWERTJxxTCbS7smYXBgCGAWwTJAW74ACCqrAx1AJy0BnJOC4B7PBghIATANzszdzTbAA3dRQ8HXAADyQGXCgIgF8Y3Ag7XwCgkLBwxEiwaMRxBjjcO3Z2SzhnTNwZAC80ODMI3DRLACE4GrqAUQBHPECUKABlUy44EkR2QNK4gF0gA_3
# 線 1
particle soul_fire_flame ^0 ^ ^0 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^1.78571 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^3.57143 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^5.35714 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^7.14286 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^8.92857 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^10.71429 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^12.5 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^14.28571 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^16.07143 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^17.85714 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^19.64286 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^21.42857 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^23.21429 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^25 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^26.78571 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^28.57143 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^30.35714 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^32.14286 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^33.92857 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^35.71429 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^37.5 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^39.28571 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^41.07143 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^42.85714 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^44.64286 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^46.42857 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^48.21429 2 0.3 2 0.1 15
particle soul_fire_flame ^0 ^ ^50 2 0.3 2 0.1 15
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAHAGZwBGcZAzAMYC0VFArMwCxFwBszMuz71m9AJwAmAOziu4xgwAM0sLgwBDALYJkgLd8ABAEY1YGBoBO2gM5JwjAPZ4MEJJL64KFh1rtgAbhooeLrgAB5ISrhQkQC+sbgQDn6BwaFgEYhRYDGI7ErxuA4UFNZwrlm4tABeaHAWkbho1gBCcLX1AKIAjnhBKFAAyuaMcCSIFEFl8QC6QA_3
# 線 1
particle explosion ^0 ^0.1 ^0 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^2 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^4 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^6 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^8 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^10 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^12 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^14 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^16 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^18 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^20 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^22 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^24 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^26 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^28 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^30 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^32 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^34 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^36 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^38 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^40 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^42 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^44 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^46 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^48 1.5 0.1 1.5 0.1 3
particle explosion ^0 ^0.1 ^50 1.5 0.1 1.5 0.1 3
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgIxEBsAzGQAwAsAtGQGZkDGLTA7AE4+LAbQoBWERTJxxTCbS7smYXBgCGAWwTJAW74ACCqrAx1AJy0BnJOC4B7PBghIATANzszdzTbAA3dRQ8HXAADyQGXCgIgF8Y3Ag7XwCgkLBwxEiwaMRxBjjcO3Z2SzhnTNwZAC80ODMI3DRLACE4GrqAUQBHPECUKABlUy44EkR2QNK4gF0gA_3
# 線 1
particle smoke ^0 ^ ^0 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^1.78571 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^3.57143 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^5.35714 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^7.14286 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^8.92857 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^10.71429 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^12.5 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^14.28571 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^16.07143 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^17.85714 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^19.64286 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^21.42857 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^23.21429 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^25 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^26.78571 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^28.57143 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^30.35714 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^32.14286 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^33.92857 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^35.71429 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^37.5 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^39.28571 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^41.07143 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^42.85714 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^44.64286 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^46.42857 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^48.21429 0.5 0.3 0.5 0.1 15
particle smoke ^0 ^ ^50 0.5 0.3 0.5 0.1 15
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgIxEBsAzGQAwAsAtGQGZkDGLTA7AE4+LAbQoBWERTJxxTCbS7smYXBgCGAWwTJAW74ACCqrAx1AJy0BnJOC4B7PBghIATANzszdzTbAA3dRQ8HXAADyQGXCgIgF8Y3Ag7XwCgkLBwxEiwaMRxBjjcO3Z2SzhnTNwZAC80ODMI3DRLACE4GrqAUQBHPECUKABlUy44EkR2QNK4gF0gA_3
# 線 1
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^0 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^1.78571 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^3.57143 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^5.35714 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^7.14286 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^8.92857 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^10.71429 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^12.5 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^14.28571 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^16.07143 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^17.85714 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^19.64286 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^21.42857 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^23.21429 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^25 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^26.78571 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^28.57143 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^30.35714 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^32.14286 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^33.92857 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^35.71429 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^37.5 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^39.28571 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^41.07143 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^42.85714 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^44.64286 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^46.42857 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^48.21429 2 2 2 0 3
particle dust 0.09 0.455 0.569 3 ^0 ^1 ^50 2 2 2 0 3
# [ImportKey]: NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYARgIxEBsAzGQAwAsAtGQGZkDGLTA7AE4+LAbQoBWERTJxxTCbS7smYXBgCGAWwTJAW74ACCqrAx1AJy0BnJOC4B7PBghIATANzszdzTbAA3dRQ8HXAADyQGXCgIgF8Y3Ag7XwCgkLBwxEiwaMRxBjjcO3Z2SzhnTNwZAC80ODMI3DRLACE4GrqAUQBHPECUKABlUy44EkR2QNK4gF0gA_3
# 線 1
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^0 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^1.78571 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^3.57143 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^5.35714 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^7.14286 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^8.92857 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^10.71429 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^12.5 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^14.28571 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^16.07143 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^17.85714 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^19.64286 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^21.42857 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^23.21429 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^25 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^26.78571 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^28.57143 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^30.35714 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^32.14286 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^33.92857 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^35.71429 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^37.5 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^39.28571 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^41.07143 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^42.85714 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^44.64286 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^46.42857 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^48.21429 1 1 1 0 3
particle dust 0.278 0.612 0.694 3 ^0 ^1 ^50 1 1 1 0 3

# 演出
    data modify storage api: Argument.ID set value 2179
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    function api:object/summon
