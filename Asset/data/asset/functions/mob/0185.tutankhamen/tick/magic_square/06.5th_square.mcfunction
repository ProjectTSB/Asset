#> asset:mob/0185.tutankhamen/tick/magic_square/06.5th_square
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/01.main

# 演出
    playsound entity.evoker.prepare_summon hostile @a[distance=..20] ~ ~ ~ 1.2 0.5 0.4

# ダメージ
    execute if entity @s[scores={55.Tick=90}] if entity @a[tag=!PlayerShouldInvulnerable,distance=..8] run function asset:mob/0185.tutankhamen/tick/magic_square/11.5th_damage

# 円 5
    particle witch ^0 ^ ^-8 0 0 0 0 1
    particle witch ^0.31408 ^ ^-7.99383 0 0 0 0 1
    particle witch ^0.62767 ^ ^-7.97534 0 0 0 0 1
    particle witch ^0.9403 ^ ^-7.94455 0 0 0 0 1
    particle witch ^1.25148 ^ ^-7.90151 0 0 0 0 1
    particle witch ^1.56072 ^ ^-7.84628 0 0 0 0 1
    particle witch ^1.86756 ^ ^-7.77896 0 0 0 0 1
    particle witch ^2.17152 ^ ^-7.69964 0 0 0 0 1
    particle witch ^2.47214 ^ ^-7.60845 0 0 0 0 1
    particle witch ^2.76894 ^ ^-7.50553 0 0 0 0 1
    particle witch ^3.06147 ^ ^-7.39104 0 0 0 0 1
    particle witch ^3.34928 ^ ^-7.26515 0 0 0 0 1
    particle witch ^3.63192 ^ ^-7.12805 0 0 0 0 1
    particle witch ^3.90897 ^ ^-6.97997 0 0 0 0 1
    particle witch ^4.17999 ^ ^-6.82112 0 0 0 0 1
    particle witch ^4.44456 ^ ^-6.65176 0 0 0 0 1
    particle witch ^4.70228 ^ ^-6.47214 0 0 0 0 1
    particle witch ^4.95275 ^ ^-6.28254 0 0 0 0 1
    particle witch ^5.19558 ^ ^-6.08325 0 0 0 0 1
    particle witch ^5.43041 ^ ^-5.87458 0 0 0 0 1
    particle witch ^5.65685 ^ ^-5.65685 0 0 0 0 1
    particle witch ^5.87458 ^ ^-5.43041 0 0 0 0 1
    particle witch ^6.08325 ^ ^-5.19558 0 0 0 0 1
    particle witch ^6.28254 ^ ^-4.95275 0 0 0 0 1
    particle witch ^6.47214 ^ ^-4.70228 0 0 0 0 1
    particle witch ^6.65176 ^ ^-4.44456 0 0 0 0 1
    particle witch ^6.82112 ^ ^-4.17999 0 0 0 0 1
    particle witch ^6.97997 ^ ^-3.90897 0 0 0 0 1
    particle witch ^7.12805 ^ ^-3.63192 0 0 0 0 1
    particle witch ^7.26515 ^ ^-3.34928 0 0 0 0 1
    particle witch ^7.39104 ^ ^-3.06147 0 0 0 0 1
    particle witch ^7.50553 ^ ^-2.76894 0 0 0 0 1
    particle witch ^7.60845 ^ ^-2.47214 0 0 0 0 1
    particle witch ^7.69964 ^ ^-2.17152 0 0 0 0 1
    particle witch ^7.77896 ^ ^-1.86756 0 0 0 0 1
    particle witch ^7.84628 ^ ^-1.56072 0 0 0 0 1
    particle witch ^7.90151 ^ ^-1.25148 0 0 0 0 1
    particle witch ^7.94455 ^ ^-0.9403 0 0 0 0 1
    particle witch ^7.97534 ^ ^-0.62767 0 0 0 0 1
    particle witch ^7.99383 ^ ^-0.31408 0 0 0 0 1
    particle witch ^8 ^ ^0 0 0 0 0 1
    particle witch ^7.99383 ^ ^0.31408 0 0 0 0 1
    particle witch ^7.97534 ^ ^0.62767 0 0 0 0 1
    particle witch ^7.94455 ^ ^0.9403 0 0 0 0 1
    particle witch ^7.90151 ^ ^1.25148 0 0 0 0 1
    particle witch ^7.84628 ^ ^1.56072 0 0 0 0 1
    particle witch ^7.77896 ^ ^1.86756 0 0 0 0 1
    particle witch ^7.69964 ^ ^2.17152 0 0 0 0 1
    particle witch ^7.60845 ^ ^2.47214 0 0 0 0 1
    particle witch ^7.50553 ^ ^2.76894 0 0 0 0 1
    particle witch ^7.39104 ^ ^3.06147 0 0 0 0 1
    particle witch ^7.26515 ^ ^3.34928 0 0 0 0 1
    particle witch ^7.12805 ^ ^3.63192 0 0 0 0 1
    particle witch ^6.97997 ^ ^3.90897 0 0 0 0 1
    particle witch ^6.82112 ^ ^4.17999 0 0 0 0 1
    particle witch ^6.65176 ^ ^4.44456 0 0 0 0 1
    particle witch ^6.47214 ^ ^4.70228 0 0 0 0 1
    particle witch ^6.28254 ^ ^4.95275 0 0 0 0 1
    particle witch ^6.08325 ^ ^5.19558 0 0 0 0 1
    particle witch ^5.87458 ^ ^5.43041 0 0 0 0 1
    particle witch ^5.65685 ^ ^5.65685 0 0 0 0 1
    particle witch ^5.43041 ^ ^5.87458 0 0 0 0 1
    particle witch ^5.19558 ^ ^6.08325 0 0 0 0 1
    particle witch ^4.95275 ^ ^6.28254 0 0 0 0 1
    particle witch ^4.70228 ^ ^6.47214 0 0 0 0 1
    particle witch ^4.44456 ^ ^6.65176 0 0 0 0 1
    particle witch ^4.17999 ^ ^6.82112 0 0 0 0 1
    particle witch ^3.90897 ^ ^6.97997 0 0 0 0 1
    particle witch ^3.63192 ^ ^7.12805 0 0 0 0 1
    particle witch ^3.34928 ^ ^7.26515 0 0 0 0 1
    particle witch ^3.06147 ^ ^7.39104 0 0 0 0 1
    particle witch ^2.76894 ^ ^7.50553 0 0 0 0 1
    particle witch ^2.47214 ^ ^7.60845 0 0 0 0 1
    particle witch ^2.17152 ^ ^7.69964 0 0 0 0 1
    particle witch ^1.86756 ^ ^7.77896 0 0 0 0 1
    particle witch ^1.56072 ^ ^7.84628 0 0 0 0 1
    particle witch ^1.25148 ^ ^7.90151 0 0 0 0 1
    particle witch ^0.9403 ^ ^7.94455 0 0 0 0 1
    particle witch ^0.62767 ^ ^7.97534 0 0 0 0 1
    particle witch ^0.31408 ^ ^7.99383 0 0 0 0 1
    particle witch ^0 ^ ^8 0 0 0 0 1
    particle witch ^-0.31408 ^ ^7.99383 0 0 0 0 1
    particle witch ^-0.62767 ^ ^7.97534 0 0 0 0 1
    particle witch ^-0.9403 ^ ^7.94455 0 0 0 0 1
    particle witch ^-1.25148 ^ ^7.90151 0 0 0 0 1
    particle witch ^-1.56072 ^ ^7.84628 0 0 0 0 1
    particle witch ^-1.86756 ^ ^7.77896 0 0 0 0 1
    particle witch ^-2.17152 ^ ^7.69964 0 0 0 0 1
    particle witch ^-2.47214 ^ ^7.60845 0 0 0 0 1
    particle witch ^-2.76894 ^ ^7.50553 0 0 0 0 1
    particle witch ^-3.06147 ^ ^7.39104 0 0 0 0 1
    particle witch ^-3.34928 ^ ^7.26515 0 0 0 0 1
    particle witch ^-3.63192 ^ ^7.12805 0 0 0 0 1
    particle witch ^-3.90897 ^ ^6.97997 0 0 0 0 1
    particle witch ^-4.17999 ^ ^6.82112 0 0 0 0 1
    particle witch ^-4.44456 ^ ^6.65176 0 0 0 0 1
    particle witch ^-4.70228 ^ ^6.47214 0 0 0 0 1
    particle witch ^-4.95275 ^ ^6.28254 0 0 0 0 1
    particle witch ^-5.19558 ^ ^6.08325 0 0 0 0 1
    particle witch ^-5.43041 ^ ^5.87458 0 0 0 0 1
    particle witch ^-5.65685 ^ ^5.65685 0 0 0 0 1
    particle witch ^-5.87458 ^ ^5.43041 0 0 0 0 1
    particle witch ^-6.08325 ^ ^5.19558 0 0 0 0 1
    particle witch ^-6.28254 ^ ^4.95275 0 0 0 0 1
    particle witch ^-6.47214 ^ ^4.70228 0 0 0 0 1
    particle witch ^-6.65176 ^ ^4.44456 0 0 0 0 1
    particle witch ^-6.82112 ^ ^4.17999 0 0 0 0 1
    particle witch ^-6.97997 ^ ^3.90897 0 0 0 0 1
    particle witch ^-7.12805 ^ ^3.63192 0 0 0 0 1
    particle witch ^-7.26515 ^ ^3.34928 0 0 0 0 1
    particle witch ^-7.39104 ^ ^3.06147 0 0 0 0 1
    particle witch ^-7.50553 ^ ^2.76894 0 0 0 0 1
    particle witch ^-7.60845 ^ ^2.47214 0 0 0 0 1
    particle witch ^-7.69964 ^ ^2.17152 0 0 0 0 1
    particle witch ^-7.77896 ^ ^1.86756 0 0 0 0 1
    particle witch ^-7.84628 ^ ^1.56072 0 0 0 0 1
    particle witch ^-7.90151 ^ ^1.25148 0 0 0 0 1
    particle witch ^-7.94455 ^ ^0.9403 0 0 0 0 1
    particle witch ^-7.97534 ^ ^0.62767 0 0 0 0 1
    particle witch ^-7.99383 ^ ^0.31408 0 0 0 0 1
    particle witch ^-8 ^ ^0 0 0 0 0 1
    particle witch ^-7.99383 ^ ^-0.31408 0 0 0 0 1
    particle witch ^-7.97534 ^ ^-0.62767 0 0 0 0 1
    particle witch ^-7.94455 ^ ^-0.9403 0 0 0 0 1
    particle witch ^-7.90151 ^ ^-1.25148 0 0 0 0 1
    particle witch ^-7.84628 ^ ^-1.56072 0 0 0 0 1
    particle witch ^-7.77896 ^ ^-1.86756 0 0 0 0 1
    particle witch ^-7.69964 ^ ^-2.17152 0 0 0 0 1
    particle witch ^-7.60845 ^ ^-2.47214 0 0 0 0 1
    particle witch ^-7.50553 ^ ^-2.76894 0 0 0 0 1
    particle witch ^-7.39104 ^ ^-3.06147 0 0 0 0 1
    particle witch ^-7.26515 ^ ^-3.34928 0 0 0 0 1
    particle witch ^-7.12805 ^ ^-3.63192 0 0 0 0 1
    particle witch ^-6.97997 ^ ^-3.90897 0 0 0 0 1
    particle witch ^-6.82112 ^ ^-4.17999 0 0 0 0 1
    particle witch ^-6.65176 ^ ^-4.44456 0 0 0 0 1
    particle witch ^-6.47214 ^ ^-4.70228 0 0 0 0 1
    particle witch ^-6.28254 ^ ^-4.95275 0 0 0 0 1
    particle witch ^-6.08325 ^ ^-5.19558 0 0 0 0 1
    particle witch ^-5.87458 ^ ^-5.43041 0 0 0 0 1
    particle witch ^-5.65685 ^ ^-5.65685 0 0 0 0 1
    particle witch ^-5.43041 ^ ^-5.87458 0 0 0 0 1
    particle witch ^-5.19558 ^ ^-6.08325 0 0 0 0 1
    particle witch ^-4.95275 ^ ^-6.28254 0 0 0 0 1
    particle witch ^-4.70228 ^ ^-6.47214 0 0 0 0 1
    particle witch ^-4.44456 ^ ^-6.65176 0 0 0 0 1
    particle witch ^-4.17999 ^ ^-6.82112 0 0 0 0 1
    particle witch ^-3.90897 ^ ^-6.97997 0 0 0 0 1
    particle witch ^-3.63192 ^ ^-7.12805 0 0 0 0 1
    particle witch ^-3.34928 ^ ^-7.26515 0 0 0 0 1
    particle witch ^-3.06147 ^ ^-7.39104 0 0 0 0 1
    particle witch ^-2.76894 ^ ^-7.50553 0 0 0 0 1
    particle witch ^-2.47214 ^ ^-7.60845 0 0 0 0 1
    particle witch ^-2.17152 ^ ^-7.69964 0 0 0 0 1
    particle witch ^-1.86756 ^ ^-7.77896 0 0 0 0 1
    particle witch ^-1.56072 ^ ^-7.84628 0 0 0 0 1
    particle witch ^-1.25148 ^ ^-7.90151 0 0 0 0 1
    particle witch ^-0.9403 ^ ^-7.94455 0 0 0 0 1
    particle witch ^-0.62767 ^ ^-7.97534 0 0 0 0 1
    particle witch ^-0.31408 ^ ^-7.99383 0 0 0 0 1
# 中円
    particle witch ^0 ^ ^-4 0 0 0 0 1
    particle witch ^0.27903 ^ ^-3.99026 0 0 0 0 1
    particle witch ^0.55669 ^ ^-3.96107 0 0 0 0 1
    particle witch ^0.83165 ^ ^-3.91259 0 0 0 0 1
    particle witch ^1.10255 ^ ^-3.84505 0 0 0 0 1
    particle witch ^1.36808 ^ ^-3.75877 0 0 0 0 1
    particle witch ^1.62695 ^ ^-3.65418 0 0 0 0 1
    particle witch ^1.87789 ^ ^-3.53179 0 0 0 0 1
    particle witch ^2.11968 ^ ^-3.39219 0 0 0 0 1
    particle witch ^2.35114 ^ ^-3.23607 0 0 0 0 1
    particle witch ^2.57115 ^ ^-3.06418 0 0 0 0 1
    particle witch ^2.77863 ^ ^-2.87736 0 0 0 0 1
    particle witch ^2.97258 ^ ^-2.67652 0 0 0 0 1
    particle witch ^3.15204 ^ ^-2.46265 0 0 0 0 1
    particle witch ^3.31615 ^ ^-2.23677 0 0 0 0 1
    particle witch ^3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^3.59518 ^ ^-1.75348 0 0 0 0 1
    particle witch ^3.70874 ^ ^-1.49843 0 0 0 0 1
    particle witch ^3.80423 ^ ^-1.23607 0 0 0 0 1
    particle witch ^3.88118 ^ ^-0.96769 0 0 0 0 1
    particle witch ^3.93923 ^ ^-0.69459 0 0 0 0 1
    particle witch ^3.97809 ^ ^-0.41811 0 0 0 0 1
    particle witch ^3.99756 ^ ^-0.1396 0 0 0 0 1
    particle witch ^3.99756 ^ ^0.1396 0 0 0 0 1
    particle witch ^3.97809 ^ ^0.41811 0 0 0 0 1
    particle witch ^3.93923 ^ ^0.69459 0 0 0 0 1
    particle witch ^3.88118 ^ ^0.96769 0 0 0 0 1
    particle witch ^3.80423 ^ ^1.23607 0 0 0 0 1
    particle witch ^3.70874 ^ ^1.49843 0 0 0 0 1
    particle witch ^3.59518 ^ ^1.75348 0 0 0 0 1
    particle witch ^3.4641 ^ ^2 0 0 0 0 1
    particle witch ^3.31615 ^ ^2.23677 0 0 0 0 1
    particle witch ^3.15204 ^ ^2.46265 0 0 0 0 1
    particle witch ^2.97258 ^ ^2.67652 0 0 0 0 1
    particle witch ^2.77863 ^ ^2.87736 0 0 0 0 1
    particle witch ^2.57115 ^ ^3.06418 0 0 0 0 1
    particle witch ^2.35114 ^ ^3.23607 0 0 0 0 1
    particle witch ^2.11968 ^ ^3.39219 0 0 0 0 1
    particle witch ^1.87789 ^ ^3.53179 0 0 0 0 1
    particle witch ^1.62695 ^ ^3.65418 0 0 0 0 1
    particle witch ^1.36808 ^ ^3.75877 0 0 0 0 1
    particle witch ^1.10255 ^ ^3.84505 0 0 0 0 1
    particle witch ^0.83165 ^ ^3.91259 0 0 0 0 1
    particle witch ^0.55669 ^ ^3.96107 0 0 0 0 1
    particle witch ^0.27903 ^ ^3.99026 0 0 0 0 1
    particle witch ^0 ^ ^4 0 0 0 0 1
    particle witch ^-0.27903 ^ ^3.99026 0 0 0 0 1
    particle witch ^-0.55669 ^ ^3.96107 0 0 0 0 1
    particle witch ^-0.83165 ^ ^3.91259 0 0 0 0 1
    particle witch ^-1.10255 ^ ^3.84505 0 0 0 0 1
    particle witch ^-1.36808 ^ ^3.75877 0 0 0 0 1
    particle witch ^-1.62695 ^ ^3.65418 0 0 0 0 1
    particle witch ^-1.87789 ^ ^3.53179 0 0 0 0 1
    particle witch ^-2.11968 ^ ^3.39219 0 0 0 0 1
    particle witch ^-2.35114 ^ ^3.23607 0 0 0 0 1
    particle witch ^-2.57115 ^ ^3.06418 0 0 0 0 1
    particle witch ^-2.77863 ^ ^2.87736 0 0 0 0 1
    particle witch ^-2.97258 ^ ^2.67652 0 0 0 0 1
    particle witch ^-3.15204 ^ ^2.46265 0 0 0 0 1
    particle witch ^-3.31615 ^ ^2.23677 0 0 0 0 1
    particle witch ^-3.4641 ^ ^2 0 0 0 0 1
    particle witch ^-3.59518 ^ ^1.75348 0 0 0 0 1
    particle witch ^-3.70874 ^ ^1.49843 0 0 0 0 1
    particle witch ^-3.80423 ^ ^1.23607 0 0 0 0 1
    particle witch ^-3.88118 ^ ^0.96769 0 0 0 0 1
    particle witch ^-3.93923 ^ ^0.69459 0 0 0 0 1
    particle witch ^-3.97809 ^ ^0.41811 0 0 0 0 1
    particle witch ^-3.99756 ^ ^0.1396 0 0 0 0 1
    particle witch ^-3.99756 ^ ^-0.1396 0 0 0 0 1
    particle witch ^-3.97809 ^ ^-0.41811 0 0 0 0 1
    particle witch ^-3.93923 ^ ^-0.69459 0 0 0 0 1
    particle witch ^-3.88118 ^ ^-0.96769 0 0 0 0 1
    particle witch ^-3.80423 ^ ^-1.23607 0 0 0 0 1
    particle witch ^-3.70874 ^ ^-1.49843 0 0 0 0 1
    particle witch ^-3.59518 ^ ^-1.75348 0 0 0 0 1
    particle witch ^-3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^-3.31615 ^ ^-2.23677 0 0 0 0 1
    particle witch ^-3.15204 ^ ^-2.46265 0 0 0 0 1
    particle witch ^-2.97258 ^ ^-2.67652 0 0 0 0 1
    particle witch ^-2.77863 ^ ^-2.87736 0 0 0 0 1
    particle witch ^-2.57115 ^ ^-3.06418 0 0 0 0 1
    particle witch ^-2.35114 ^ ^-3.23607 0 0 0 0 1
    particle witch ^-2.11968 ^ ^-3.39219 0 0 0 0 1
    particle witch ^-1.87789 ^ ^-3.53179 0 0 0 0 1
    particle witch ^-1.62695 ^ ^-3.65418 0 0 0 0 1
    particle witch ^-1.36808 ^ ^-3.75877 0 0 0 0 1
    particle witch ^-1.10255 ^ ^-3.84505 0 0 0 0 1
    particle witch ^-0.83165 ^ ^-3.91259 0 0 0 0 1
    particle witch ^-0.55669 ^ ^-3.96107 0 0 0 0 1
    particle witch ^-0.27903 ^ ^-3.99026 0 0 0 0 1
# 最内三角
    particle witch ^3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^3.34863 ^ ^-1.8 0 0 0 0 1
    particle witch ^3.23316 ^ ^-1.6 0 0 0 0 1
    particle witch ^3.11769 ^ ^-1.4 0 0 0 0 1
    particle witch ^3.00222 ^ ^-1.2 0 0 0 0 1
    particle witch ^2.88675 ^ ^-1 0 0 0 0 1
    particle witch ^2.77128 ^ ^-0.8 0 0 0 0 1
    particle witch ^2.65581 ^ ^-0.6 0 0 0 0 1
    particle witch ^2.54034 ^ ^-0.4 0 0 0 0 1
    particle witch ^2.42487 ^ ^-0.2 0 0 0 0 1
    particle witch ^2.3094 ^ ^0 0 0 0 0 1
    particle witch ^2.19393 ^ ^0.2 0 0 0 0 1
    particle witch ^2.07846 ^ ^0.4 0 0 0 0 1
    particle witch ^1.96299 ^ ^0.6 0 0 0 0 1
    particle witch ^1.84752 ^ ^0.8 0 0 0 0 1
    particle witch ^1.73205 ^ ^1 0 0 0 0 1
    particle witch ^1.61658 ^ ^1.2 0 0 0 0 1
    particle witch ^1.50111 ^ ^1.4 0 0 0 0 1
    particle witch ^1.38564 ^ ^1.6 0 0 0 0 1
    particle witch ^1.27017 ^ ^1.8 0 0 0 0 1
    particle witch ^1.1547 ^ ^2 0 0 0 0 1
    particle witch ^1.03923 ^ ^2.2 0 0 0 0 1
    particle witch ^0.92376 ^ ^2.4 0 0 0 0 1
    particle witch ^0.80829 ^ ^2.6 0 0 0 0 1
    particle witch ^0.69282 ^ ^2.8 0 0 0 0 1
    particle witch ^0.57735 ^ ^3 0 0 0 0 1
    particle witch ^0.46188 ^ ^3.2 0 0 0 0 1
    particle witch ^0.34641 ^ ^3.4 0 0 0 0 1
    particle witch ^0.23094 ^ ^3.6 0 0 0 0 1
    particle witch ^0.11547 ^ ^3.8 0 0 0 0 1
    particle witch ^0 ^ ^4 0 0 0 0 1
    particle witch ^-0.11547 ^ ^3.8 0 0 0 0 1
    particle witch ^-0.23094 ^ ^3.6 0 0 0 0 1
    particle witch ^-0.34641 ^ ^3.4 0 0 0 0 1
    particle witch ^-0.46188 ^ ^3.2 0 0 0 0 1
    particle witch ^-0.57735 ^ ^3 0 0 0 0 1
    particle witch ^-0.69282 ^ ^2.8 0 0 0 0 1
    particle witch ^-0.80829 ^ ^2.6 0 0 0 0 1
    particle witch ^-0.92376 ^ ^2.4 0 0 0 0 1
    particle witch ^-1.03923 ^ ^2.2 0 0 0 0 1
    particle witch ^-1.1547 ^ ^2 0 0 0 0 1
    particle witch ^-1.27017 ^ ^1.8 0 0 0 0 1
    particle witch ^-1.38564 ^ ^1.6 0 0 0 0 1
    particle witch ^-1.50111 ^ ^1.4 0 0 0 0 1
    particle witch ^-1.61658 ^ ^1.2 0 0 0 0 1
    particle witch ^-1.73205 ^ ^1 0 0 0 0 1
    particle witch ^-1.84752 ^ ^0.8 0 0 0 0 1
    particle witch ^-1.96299 ^ ^0.6 0 0 0 0 1
    particle witch ^-2.07846 ^ ^0.4 0 0 0 0 1
    particle witch ^-2.19393 ^ ^0.2 0 0 0 0 1
    particle witch ^-2.3094 ^ ^0 0 0 0 0 1
    particle witch ^-2.42487 ^ ^-0.2 0 0 0 0 1
    particle witch ^-2.54034 ^ ^-0.4 0 0 0 0 1
    particle witch ^-2.65581 ^ ^-0.6 0 0 0 0 1
    particle witch ^-2.77128 ^ ^-0.8 0 0 0 0 1
    particle witch ^-2.88675 ^ ^-1 0 0 0 0 1
    particle witch ^-3.00222 ^ ^-1.2 0 0 0 0 1
    particle witch ^-3.11769 ^ ^-1.4 0 0 0 0 1
    particle witch ^-3.23316 ^ ^-1.6 0 0 0 0 1
    particle witch ^-3.34863 ^ ^-1.8 0 0 0 0 1
    particle witch ^-3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^-3.23316 ^ ^-2 0 0 0 0 1
    particle witch ^-3.00222 ^ ^-2 0 0 0 0 1
    particle witch ^-2.77128 ^ ^-2 0 0 0 0 1
    particle witch ^-2.54034 ^ ^-2 0 0 0 0 1
    particle witch ^-2.3094 ^ ^-2 0 0 0 0 1
    particle witch ^-2.07846 ^ ^-2 0 0 0 0 1
    particle witch ^-1.84752 ^ ^-2 0 0 0 0 1
    particle witch ^-1.61658 ^ ^-2 0 0 0 0 1
    particle witch ^-1.38564 ^ ^-2 0 0 0 0 1
    particle witch ^-1.1547 ^ ^-2 0 0 0 0 1
    particle witch ^-0.92376 ^ ^-2 0 0 0 0 1
    particle witch ^-0.69282 ^ ^-2 0 0 0 0 1
    particle witch ^-0.46188 ^ ^-2 0 0 0 0 1
    particle witch ^-0.23094 ^ ^-2 0 0 0 0 1
    particle witch ^0 ^ ^-2 0 0 0 0 1
    particle witch ^0.23094 ^ ^-2 0 0 0 0 1
    particle witch ^0.46188 ^ ^-2 0 0 0 0 1
    particle witch ^0.69282 ^ ^-2 0 0 0 0 1
    particle witch ^0.92376 ^ ^-2 0 0 0 0 1
    particle witch ^1.1547 ^ ^-2 0 0 0 0 1
    particle witch ^1.38564 ^ ^-2 0 0 0 0 1
    particle witch ^1.61658 ^ ^-2 0 0 0 0 1
    particle witch ^1.84752 ^ ^-2 0 0 0 0 1
    particle witch ^2.07846 ^ ^-2 0 0 0 0 1
    particle witch ^2.3094 ^ ^-2 0 0 0 0 1
    particle witch ^2.54034 ^ ^-2 0 0 0 0 1
    particle witch ^2.77128 ^ ^-2 0 0 0 0 1
    particle witch ^3.00222 ^ ^-2 0 0 0 0 1
    particle witch ^3.23316 ^ ^-2 0 0 0 0 1
# 最内円
    particle witch ^0 ^ ^-2 0 0 0 0 1
    particle witch ^0.20902 ^ ^-1.98877 0 0 0 0 1
    particle witch ^0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^2 ^ ^0 0 0 0 0 1
    particle witch ^1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^0 ^ ^2 0 0 0 0 1
    particle witch ^-0.20902 ^ ^1.98877 0 0 0 0 1
    particle witch ^-0.41572 ^ ^1.95584 0 0 0 0 1
    particle witch ^-0.61785 ^ ^1.90156 0 0 0 0 1
    particle witch ^-0.81323 ^ ^1.82654 0 0 0 0 1
    particle witch ^-0.99973 ^ ^1.73159 0 0 0 0 1
    particle witch ^-1.17535 ^ ^1.61772 0 0 0 0 1
    particle witch ^-1.33816 ^ ^1.48618 0 0 0 0 1
    particle witch ^-1.48618 ^ ^1.33816 0 0 0 0 1
    particle witch ^-1.61772 ^ ^1.17535 0 0 0 0 1
    particle witch ^-1.73159 ^ ^0.99973 0 0 0 0 1
    particle witch ^-1.82654 ^ ^0.81323 0 0 0 0 1
    particle witch ^-1.90156 ^ ^0.61785 0 0 0 0 1
    particle witch ^-1.95584 ^ ^0.41572 0 0 0 0 1
    particle witch ^-1.98877 ^ ^0.20902 0 0 0 0 1
    particle witch ^-2 ^ ^0 0 0 0 0 1
    particle witch ^-1.98877 ^ ^-0.20902 0 0 0 0 1
    particle witch ^-1.95584 ^ ^-0.41572 0 0 0 0 1
    particle witch ^-1.90156 ^ ^-0.61785 0 0 0 0 1
    particle witch ^-1.82654 ^ ^-0.81323 0 0 0 0 1
    particle witch ^-1.73159 ^ ^-0.99973 0 0 0 0 1
    particle witch ^-1.61772 ^ ^-1.17535 0 0 0 0 1
    particle witch ^-1.48618 ^ ^-1.33816 0 0 0 0 1
    particle witch ^-1.33816 ^ ^-1.48618 0 0 0 0 1
    particle witch ^-1.17535 ^ ^-1.61772 0 0 0 0 1
    particle witch ^-0.99973 ^ ^-1.73159 0 0 0 0 1
    particle witch ^-0.81323 ^ ^-1.82654 0 0 0 0 1
    particle witch ^-0.61785 ^ ^-1.90156 0 0 0 0 1
    particle witch ^-0.41572 ^ ^-1.95584 0 0 0 0 1
    particle witch ^-0.20902 ^ ^-1.98877 0 0 0 0 1
# 最外三角
    particle witch ^0 ^ ^-8 0 0 0 0 1
    particle witch ^0.13856 ^ ^-7.76 0 0 0 0 1
    particle witch ^0.27713 ^ ^-7.52 0 0 0 0 1
    particle witch ^0.41569 ^ ^-7.28 0 0 0 0 1
    particle witch ^0.55426 ^ ^-7.04 0 0 0 0 1
    particle witch ^0.69282 ^ ^-6.8 0 0 0 0 1
    particle witch ^0.83138 ^ ^-6.56 0 0 0 0 1
    particle witch ^0.96995 ^ ^-6.32 0 0 0 0 1
    particle witch ^1.10851 ^ ^-6.08 0 0 0 0 1
    particle witch ^1.24708 ^ ^-5.84 0 0 0 0 1
    particle witch ^1.38564 ^ ^-5.6 0 0 0 0 1
    particle witch ^1.5242 ^ ^-5.36 0 0 0 0 1
    particle witch ^1.66277 ^ ^-5.12 0 0 0 0 1
    particle witch ^1.80133 ^ ^-4.88 0 0 0 0 1
    particle witch ^1.9399 ^ ^-4.64 0 0 0 0 1
    particle witch ^2.07846 ^ ^-4.4 0 0 0 0 1
    particle witch ^2.21703 ^ ^-4.16 0 0 0 0 1
    particle witch ^2.35559 ^ ^-3.92 0 0 0 0 1
    particle witch ^2.49415 ^ ^-3.68 0 0 0 0 1
    particle witch ^2.63272 ^ ^-3.44 0 0 0 0 1
    particle witch ^2.77128 ^ ^-3.2 0 0 0 0 1
    particle witch ^2.90985 ^ ^-2.96 0 0 0 0 1
    particle witch ^3.04841 ^ ^-2.72 0 0 0 0 1
    particle witch ^3.18697 ^ ^-2.48 0 0 0 0 1
    particle witch ^3.32554 ^ ^-2.24 0 0 0 0 1
    particle witch ^3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^3.60267 ^ ^-1.76 0 0 0 0 1
    particle witch ^3.74123 ^ ^-1.52 0 0 0 0 1
    particle witch ^3.87979 ^ ^-1.28 0 0 0 0 1
    particle witch ^4.01836 ^ ^-1.04 0 0 0 0 1
    particle witch ^4.15692 ^ ^-0.8 0 0 0 0 1
    particle witch ^4.29549 ^ ^-0.56 0 0 0 0 1
    particle witch ^4.43405 ^ ^-0.32 0 0 0 0 1
    particle witch ^4.57261 ^ ^-0.08 0 0 0 0 1
    particle witch ^4.71118 ^ ^0.16 0 0 0 0 1
    particle witch ^4.84974 ^ ^0.4 0 0 0 0 1
    particle witch ^4.98831 ^ ^0.64 0 0 0 0 1
    particle witch ^5.12687 ^ ^0.88 0 0 0 0 1
    particle witch ^5.26543 ^ ^1.12 0 0 0 0 1
    particle witch ^5.404 ^ ^1.36 0 0 0 0 1
    particle witch ^5.54256 ^ ^1.6 0 0 0 0 1
    particle witch ^5.68113 ^ ^1.84 0 0 0 0 1
    particle witch ^5.81969 ^ ^2.08 0 0 0 0 1
    particle witch ^5.95825 ^ ^2.32 0 0 0 0 1
    particle witch ^6.09682 ^ ^2.56 0 0 0 0 1
    particle witch ^6.23538 ^ ^2.8 0 0 0 0 1
    particle witch ^6.37395 ^ ^3.04 0 0 0 0 1
    particle witch ^6.51251 ^ ^3.28 0 0 0 0 1
    particle witch ^6.65108 ^ ^3.52 0 0 0 0 1
    particle witch ^6.78964 ^ ^3.76 0 0 0 0 1
    particle witch ^6.9282 ^ ^4 0 0 0 0 1
    particle witch ^6.65108 ^ ^4 0 0 0 0 1
    particle witch ^6.37395 ^ ^4 0 0 0 0 1
    particle witch ^6.09682 ^ ^4 0 0 0 0 1
    particle witch ^5.81969 ^ ^4 0 0 0 0 1
    particle witch ^5.54256 ^ ^4 0 0 0 0 1
    particle witch ^5.26543 ^ ^4 0 0 0 0 1
    particle witch ^4.98831 ^ ^4 0 0 0 0 1
    particle witch ^4.71118 ^ ^4 0 0 0 0 1
    particle witch ^4.43405 ^ ^4 0 0 0 0 1
    particle witch ^4.15692 ^ ^4 0 0 0 0 1
    particle witch ^3.87979 ^ ^4 0 0 0 0 1
    particle witch ^3.60267 ^ ^4 0 0 0 0 1
    particle witch ^3.32554 ^ ^4 0 0 0 0 1
    particle witch ^3.04841 ^ ^4 0 0 0 0 1
    particle witch ^2.77128 ^ ^4 0 0 0 0 1
    particle witch ^2.49415 ^ ^4 0 0 0 0 1
    particle witch ^2.21703 ^ ^4 0 0 0 0 1
    particle witch ^1.9399 ^ ^4 0 0 0 0 1
    particle witch ^1.66277 ^ ^4 0 0 0 0 1
    particle witch ^1.38564 ^ ^4 0 0 0 0 1
    particle witch ^1.10851 ^ ^4 0 0 0 0 1
    particle witch ^0.83138 ^ ^4 0 0 0 0 1
    particle witch ^0.55426 ^ ^4 0 0 0 0 1
    particle witch ^0.27713 ^ ^4 0 0 0 0 1
    particle witch ^0 ^ ^4 0 0 0 0 1
    particle witch ^-0.27713 ^ ^4 0 0 0 0 1
    particle witch ^-0.55426 ^ ^4 0 0 0 0 1
    particle witch ^-0.83138 ^ ^4 0 0 0 0 1
    particle witch ^-1.10851 ^ ^4 0 0 0 0 1
    particle witch ^-1.38564 ^ ^4 0 0 0 0 1
    particle witch ^-1.66277 ^ ^4 0 0 0 0 1
    particle witch ^-1.9399 ^ ^4 0 0 0 0 1
    particle witch ^-2.21703 ^ ^4 0 0 0 0 1
    particle witch ^-2.49415 ^ ^4 0 0 0 0 1
    particle witch ^-2.77128 ^ ^4 0 0 0 0 1
    particle witch ^-3.04841 ^ ^4 0 0 0 0 1
    particle witch ^-3.32554 ^ ^4 0 0 0 0 1
    particle witch ^-3.60267 ^ ^4 0 0 0 0 1
    particle witch ^-3.87979 ^ ^4 0 0 0 0 1
    particle witch ^-4.15692 ^ ^4 0 0 0 0 1
    particle witch ^-4.43405 ^ ^4 0 0 0 0 1
    particle witch ^-4.71118 ^ ^4 0 0 0 0 1
    particle witch ^-4.98831 ^ ^4 0 0 0 0 1
    particle witch ^-5.26543 ^ ^4 0 0 0 0 1
    particle witch ^-5.54256 ^ ^4 0 0 0 0 1
    particle witch ^-5.81969 ^ ^4 0 0 0 0 1
    particle witch ^-6.09682 ^ ^4 0 0 0 0 1
    particle witch ^-6.37395 ^ ^4 0 0 0 0 1
    particle witch ^-6.65108 ^ ^4 0 0 0 0 1
    particle witch ^-6.9282 ^ ^4 0 0 0 0 1
    particle witch ^-6.78964 ^ ^3.76 0 0 0 0 1
    particle witch ^-6.65108 ^ ^3.52 0 0 0 0 1
    particle witch ^-6.51251 ^ ^3.28 0 0 0 0 1
    particle witch ^-6.37395 ^ ^3.04 0 0 0 0 1
    particle witch ^-6.23538 ^ ^2.8 0 0 0 0 1
    particle witch ^-6.09682 ^ ^2.56 0 0 0 0 1
    particle witch ^-5.95825 ^ ^2.32 0 0 0 0 1
    particle witch ^-5.81969 ^ ^2.08 0 0 0 0 1
    particle witch ^-5.68113 ^ ^1.84 0 0 0 0 1
    particle witch ^-5.54256 ^ ^1.6 0 0 0 0 1
    particle witch ^-5.404 ^ ^1.36 0 0 0 0 1
    particle witch ^-5.26543 ^ ^1.12 0 0 0 0 1
    particle witch ^-5.12687 ^ ^0.88 0 0 0 0 1
    particle witch ^-4.98831 ^ ^0.64 0 0 0 0 1
    particle witch ^-4.84974 ^ ^0.4 0 0 0 0 1
    particle witch ^-4.71118 ^ ^0.16 0 0 0 0 1
    particle witch ^-4.57261 ^ ^-0.08 0 0 0 0 1
    particle witch ^-4.43405 ^ ^-0.32 0 0 0 0 1
    particle witch ^-4.29549 ^ ^-0.56 0 0 0 0 1
    particle witch ^-4.15692 ^ ^-0.8 0 0 0 0 1
    particle witch ^-4.01836 ^ ^-1.04 0 0 0 0 1
    particle witch ^-3.87979 ^ ^-1.28 0 0 0 0 1
    particle witch ^-3.74123 ^ ^-1.52 0 0 0 0 1
    particle witch ^-3.60267 ^ ^-1.76 0 0 0 0 1
    particle witch ^-3.4641 ^ ^-2 0 0 0 0 1
    particle witch ^-3.32554 ^ ^-2.24 0 0 0 0 1
    particle witch ^-3.18697 ^ ^-2.48 0 0 0 0 1
    particle witch ^-3.04841 ^ ^-2.72 0 0 0 0 1
    particle witch ^-2.90985 ^ ^-2.96 0 0 0 0 1
    particle witch ^-2.77128 ^ ^-3.2 0 0 0 0 1
    particle witch ^-2.63272 ^ ^-3.44 0 0 0 0 1
    particle witch ^-2.49415 ^ ^-3.68 0 0 0 0 1
    particle witch ^-2.35559 ^ ^-3.92 0 0 0 0 1
    particle witch ^-2.21703 ^ ^-4.16 0 0 0 0 1
    particle witch ^-2.07846 ^ ^-4.4 0 0 0 0 1
    particle witch ^-1.9399 ^ ^-4.64 0 0 0 0 1
    particle witch ^-1.80133 ^ ^-4.88 0 0 0 0 1
    particle witch ^-1.66277 ^ ^-5.12 0 0 0 0 1
    particle witch ^-1.5242 ^ ^-5.36 0 0 0 0 1
    particle witch ^-1.38564 ^ ^-5.6 0 0 0 0 1
    particle witch ^-1.24708 ^ ^-5.84 0 0 0 0 1
    particle witch ^-1.10851 ^ ^-6.08 0 0 0 0 1
    particle witch ^-0.96995 ^ ^-6.32 0 0 0 0 1
    particle witch ^-0.83138 ^ ^-6.56 0 0 0 0 1
    particle witch ^-0.69282 ^ ^-6.8 0 0 0 0 1
    particle witch ^-0.55426 ^ ^-7.04 0 0 0 0 1
    particle witch ^-0.41569 ^ ^-7.28 0 0 0 0 1
    particle witch ^-0.27713 ^ ^-7.52 0 0 0 0 1
    particle witch ^-0.13856 ^ ^-7.76 0 0 0 0 1
