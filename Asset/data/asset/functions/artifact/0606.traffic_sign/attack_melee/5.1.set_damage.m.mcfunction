#> asset:artifact/0606.traffic_sign/attack_melee/5.1.set_damage.m
#
#
#
# @input args
#   Damage: int (最上位桁を 100 とする)
# @within function asset:artifact/0606.traffic_sign/attack_melee/5.damage

$execute store result storage api: Argument.Damage double 0.0$(Damage) run scoreboard players operation $Speed Temporary > $1 Const
