create table weather (
	do 		VARCHAR2(50) not null,
	sigu	VARCHAR2(50) CONSTRAINT weather_pk_sigu PRIMARY KEY,
	zoneNum number(16) not null );
	
drop table weather;
	
/*-- 강원도 --*/
insert into weather values
('강원도','강릉시',4215061500);
insert into weather values
('강원도','고성군',4282025000);
insert into weather values
('강원도','동해시',4217055000);
insert into weather values
('강원도','삼척시',4223035000);
insert into weather values
('강원도','속초시',4215061500);
insert into weather values
('강원도','양구군',4280031000);
insert into weather values
('강원도','양양군',4283035000);
insert into weather values
('강원도','영월군',4275032500);
insert into weather values
('강원도','원주시',4213053000);
insert into weather values
('강원도','인제군',4281033000);
insert into weather values
('강원도','정선군',4277025300);
insert into weather values
('강원도','철원군',4278025600);
insert into weather values
('강원도','춘천시',4211067500);
insert into weather values
('강원도','태백시',4219060500);
insert into weather values
('강원도','평천군',4276038000);
insert into weather values
('강원도','홍천군',4272036000);
insert into weather values
('강원도','화천군',4279031000);
insert into weather values
('강원도','횡성군',4273034000);

/*-----경기도----*/

insert into weather values
('경기도','가평군',4182025000);
insert into weather values
('경기도','고양시덕양구',4128159000);
insert into weather values
('경기도','고양시일산동구',4128560000);
insert into weather values
('경기도','고양시일산서구',4128757000);
insert into weather values
('경기도','과천시',4129052000);

/*-----대전 광역시----*/
insert into weather values
('대전광역시','대덕구',3023052000);
insert into weather values
('대전광역시','동구',3011062000);
insert into weather values
('대전광역시','서구',3017059000);
insert into weather values
('대전광역시','유성구',3020060000);
insert into weather values
('대전광역시','중구',3014063000);

/*----세종특별자치시-----*/

insert into weather values
('세종특별자치시','세종특별자치시',3611034000);

/*----서울특별시-----*/
insert into weather values
('서울특별시','강남구',1168066000);
insert into weather values
('서울특별시','서대문구',1141069000);
insert into weather values
('서울특별시','마포구',1144056500);
insert into weather values
('서울특별시','영등포구',1156055000);
insert into weather values
('서울특별시','동대문구',1123060000);


/*----인천광역시-----*/
insert into weather values
('인천광역시','강화군',2871025000);
insert into weather values
('인천광역시','계양구',2824561100);
insert into weather values
('인천광역시','남구',2817073500);
insert into weather values
('인천광역시','남동구',2820053000);
insert into weather values
('인천광역시','인천동구',2814064000);
insert into weather values
('인천광역시','부평구',2823764100);
insert into weather values
('인천광역시','인천서구',2826054200);
insert into weather values
('인천광역시','연수구',2818578000);
insert into weather values
('인천광역시','옹진군',2872034000);
insert into weather values
('인천광역시','인천중구',2811056000);

/*----제주특별자치도-----*/

insert into weather values
('제주특별자치도','서귀포시',5013025300);
insert into weather values
('제주특별자치도','이어도',5019099000);
insert into weather values
('제주특별자치도','제주시',5011059000);

/*----충청남도-----*/
insert into weather values
('충청남도','계룡시',4425051000);
insert into weather values
('충청남도','공주시',4415033000);
insert into weather values
('충청남도','금산군',4471034000);
insert into weather values
('충청남도','논산시',4423040000);
insert into weather values
('충청남도','당진시',4427031000);

/*----충청북도-----*/
insert into weather values
('충청북도','괴산군',4376031000);
insert into weather values
('충청북도','단양군',4380032000);
insert into weather values
('충청북도','보은군',4372039000);
insert into weather values
('충청북도','영동군',4374034000);
insert into weather values
('충청북도','옥천군',4373038000);

/*----전라남도-----*/
insert into weather values
('전라남도','강진군',4681025000);
insert into weather values
('전라남도','고흥군',4677025000);
insert into weather values
('전라남도','곡성군',4672039000);
insert into weather values
('전라남도','광양시',4623051500);
insert into weather values
('전라남도','구례군',4673032000);

/*----전라북도-----*/
insert into weather values
('전라북도','고창군',4579031000);
insert into weather values
('전라북도','군산시',4513068000);
insert into weather values
('전라북도','김제시',4521054000);
insert into weather values
('전라북도','남원시',4519055000);
insert into weather values
('전라북도','무주군',4573025000);

/*----경상남도-----*/
insert into weather values
('경상남도','거제시',4831034000);
insert into weather values
('경상남도','거창군',4888041000);
insert into weather values
('경상남도','김해시',4825054000);
insert into weather values
('경상남도','경남고성군',4882038000);
insert into weather values
('경상남도','밀양시',4827054000);

/*----경상북도-----*/
insert into weather values
('경상북도','경산시',4729053000);
insert into weather values
('경상북도','경주시',4713025000);
insert into weather values
('경상북도','고령군',4783035000);
insert into weather values
('경상북도','구미시',4719025300);
insert into weather values
('경상북도','군위군',4772037000);

/*----부산광역시-----*/
insert into weather values
('부산광역시','강서구',2644055000);
insert into weather values
('부산광역시','금정구',2641068000);
insert into weather values
('부산광역시','기장군',2671025000);
insert into weather values
('부산광역시','부산남구',2629062000);
insert into weather values
('부산광역시','부산동구',2617065000);

/*----광주광역시----- 광주지역 zone수정 요망*/ 
insert into weather values
('광주광역시','광산구',2644055000);
insert into weather values
('광주광역시','광주남구',2641068000);
insert into weather values
('광주광역시','광주동구',2671025000);
insert into weather values
('광주광역시','광주북구',2629062000);
insert into weather values
('광주광역시','광주서구',2617065000);

/*----대구광역시-----*/
insert into weather values
('대구광역시','대구남구',2644055000);
insert into weather values
('대구광역시','달서구',2641068000);
insert into weather values
('대구광역시','달성군',2671025000);
insert into weather values
('대구광역시','대구동구',2629062000);
insert into weather values
('대구광역시','대구북구',2617065000);
insert into weather values
('대구광역시','대구서구',2671025000);
insert into weather values
('대구광역시','수성구',2629062000);
insert into weather values
('대구광역시','대구중구',2617065000);



--select sigu, zonenum from WEATHER where do = '대구광역시' order by sigu asc;

select * from weather;