/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_self();
if(sprite_index==icon_384)
{
	draw_text(room_width/5,room_height/5,"1팀");
	draw_text(room_width/5+600,room_height/5,"2팀");
	for(var i=0;i<array_length(team1);i++)
	{
		draw_text(room_width/5,room_height/5+100*i+100,team1[i]);
	}

	for(var i=0;i<array_length(team2);i++)
	{
		draw_text(room_width/5+600,room_height/5+100*i+100,team2[i]);
	}
}