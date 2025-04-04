/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
// 노래 참고 코드
// 폴더 가져오기
// https://manual.gamemaker.io/lts/en/GameMaker_Language/GML_Reference/File_Handling/File_Directories/directory_exists.htm

// 파일 가져오기
// https://manual.gamemaker.io/monthly/en/#t=GameMaker_Language%2FGML_Reference%2FFile_Handling%2FFile_System%2Ffile_find_next.htm&rhsearch=file_find&rhhlterm=file_find

page=0;
data=load_csv("Data.csv");
datas=[];
play_users=ds_list_create();
team1=[];
team2=[];
var w=ds_grid_width(data);
var h=ds_grid_height(data);
for(var i=1;i<min(10,h-10*page-1)+1;i++)
{
	user=instance_create_depth(room_width/6+int64((i-1)/5)*600,room_height/5+(i-1)%5*100,0,obj_user);
	datas[i+page*10-1]=user;
	user.name=data[# 0,i+page*10];
}
image_xscale=0.5;
image_yscale=0.5;