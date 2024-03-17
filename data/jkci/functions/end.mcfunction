tellraw @a ["",{"text": "【物品种类收集挑战】","color": "gold"},{"text": "游戏已结束！","color": "yellow"},{"text": "\n花费时间：","color": "gold"},{"score":{"name": "#time_","objective": "jkci.mem"},"color": "yellow"},{"text": "秒。","color": "gold"}]
execute as @a at @s run playsound ui.toast.challenge_complete player @s
scoreboard players set #state jkci.mem 2
effect give @a resistance 10 0
effect give @a levitation 4 0