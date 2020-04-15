extends Node2D

signal game_end

func _ready():
	print("ゲームシーンさん「 最初だから隠れておくぜ……☆（＾～＾）」")
	# ゲームシーンは最初は隠しておこうぜ☆（＾～＾）
	hide()

func _on_Title_game_start():
	# game_start シグナルを受けたらゲームシーンを表示しようぜ☆（＾～＾）
	# ゲームオーバー ボタンは ユーザーが隠すことがあるから、必ず表示状態で開始を待つようにしようぜ☆（＾～＾）
	print("ゲームシーンさん「 出番だぜ☆（＾～＾）！　ゲーム・オーバー・ボタン起きろ☆（＾～＾）！」")
	$GameoverButton.show()
	if $Message.text == "ゲームオーバー":
		print("ゲームシーンさん「 メッセージも起きろ☆（＾～＾）！」")
		$Message.text = "２週目？"
	show()

func _on_Timer_timeout():
	# ゲームオーバー の文字を出して数秒後に game_end のシグナルを出そうぜ☆（＾～＾）
	print("ゲームシーンさん「 ゲームオーバーの表示も十分見せたぜ☆（＾～＾） game_end シグナルを送っておこう☆（＾～＾） 次の誰か☆（＾～＾）！」")
	emit_signal("game_end")


func _on_Game_game_end():
	# タイトルシーンに切り替えたいから、このゲームシーンは非表示にしようぜ☆（＾～＾）？
	print("ゲームシーンさん「 自分で投げた game_end シグナルを自分で受け取ることになるとはな☆（＾～＾） 隠れてればいいんだろ☆（＾～＾）」")
	hide()
