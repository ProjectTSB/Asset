#> asset:mob/0415.skull_sniper_antimateriel_custom/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/415/init

# 貫通するブロック数を規定する
    function api:global_vars/get_difficulty
    execute store result storage asset:context this.Pierce int 0.9999999999 run data get storage api: Return.Difficulty 1
