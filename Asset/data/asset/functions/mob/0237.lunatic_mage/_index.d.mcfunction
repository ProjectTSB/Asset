#> asset:mob/0237.lunatic_mage/_index.d
# @private

#> 技
# @within function asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.Fire
    #declare tag 6L.Fire2
    #declare tag 6L.Water
    #declare tag 6L.Thunder
    #declare tag 6L.Magic
    #declare tag 6L.ElementalConfine

#> 再帰のヒットの処理用Tag
# @within function
#   asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/**
#   asset:mob/0237.lunatic_mage/tick/skill/magic/**
    #declare tag LandingTarget

#> 体力40%以下のTag
# @within function
#   asset:mob/0237.lunatic_mage/hurt/**
#   asset:mob/0237.lunatic_mage/tick/**
    #declare tag 6L.HealthLess40Per

#> 炎1の回転の向き
# @within function
#   asset:mob/0237.lunatic_mage/tick/skill/fire/**
#   asset:mob/0237.lunatic_mage/tick/skill/reset
    #declare tag 6L.LeftRotation

#> 召喚地点の位置用Marker
# @within function
#   asset:mob/0237.lunatic_mage/death/
#   asset:mob/0237.lunatic_mage/remove/
#   asset:mob/0237.lunatic_mage/tick/skill/elemental_confine/**
#   asset:mob/0237.lunatic_mage/tick/skill/teleport/
#   asset:mob/0237.lunatic_mage/init/
    #declare tag 6L.SpawnPoint

#> score_holder
# @within function asset:mob/0237.lunatic_mage/**
    #declare score_holder $Random
    #declare score_holder $Interval
