create database RealEstate;
use RealEstate;
create table member(
   id varchar(10) not null,
    password varchar(20) not null,
    name varchar(20) not null,
    birth date not null,
    gender varchar(10),
    email varchar(30),
    phone int(11),
    primary key(id)
);
insert into member (id, password, name, birth, gender, email, phone) values
("homeland", "123456", "김유리", "1993-11-01", "여자", "homeland@naver.com", 01012345678),
("homeland1", "123456", "김원일", "2002-03-01", "남자", "homeland1@naver.com", 01022345678),
("homeland2", "123456", "이민지", "1995-04-22", "여자", "homeland2@naver.com", 01032345678),
("homeland3", "123456", "강다인", "1998-11-14", "여자", "homeland3@naver.com", 01042345678),
("homeland4", "123456", "이연성", "1993-05-03", "여자", "homeland4@naver.com", 01052345678),
("homeland5", "123456", "조우연", "1997-02-24", "남자", "homeland5@naver.com", 01062345678),
("homeland6", "123456", "강구철", "1991-03-14", "남자", "homeland6@naver.com", 01072345678),
("homeland7", "123456", "한민규", "1990-07-18", "남자", "homeland7@naver.com", 01082345678),
("homeland8", "123456", "조리연", "1999-12-24", "여자", "homeland8@naver.com", 01092345678);

create table property(
   num int auto_increment,
    host_id varchar(20) not null,
    category varchar(20) not null,
    location varchar(10) not null,
    address varchar(50) not null,
    trading_type varchar(10) not null,
    size varchar(20) not null,
    price varchar(30) not null,
    photo varchar(50) not null,
    message varchar(100),
    foreign key(host_id) references member(id),
    primary key(num)
);

insert into property (host_id, category, location, address, trading_type, size, price, photo, message) values
("homeland", "아파트/주상복합", "성산구", "경상남도 창원시 성산구 상남동 45-1 성원아파트", "매매", "32평", "5억", "1.JPG", "캡5천만원으로내집마련.전세안고가능.수리되어이쁜집.성원전문"),
("homeland1", "아파트/주상복합", "성산구", "경상남도 창원시 성산구 반림동 18 트리비앙아파트", "매매", "28평", "3억 2천만원", "2.png", "초급매,확장,초중고접근성굿,입주가능,가격조정가"),
("homeland2", "아파트/주상복합", "의창구", "경상남도 창원시 의창구 중동 788 창원중동유니시티4단지", "전세", "45평", "1억 4천만원", "3.JPG", "초품아 선호동선호라인.상가가까워편리.즉시입주가능-에어컨2.중문,펜트리,줄"),
("homeland3", "주택", "의창구", "경상남도 창원시 의창구 팔용동 130-6", "월세", "33평", "30만원", "4.jpg", "손볼곳 없는 집 남서향 채광 구조 좋은 집 가격내림"),
("homeland4", "상가점포", "의창구", "경남 창원시 의창구 지귀로 18 경남상가", "월세", "15평", "500만원/30만원", "5.jpg", "남향, 교통 생활 편의시설 위치 좋은 주택상가"),
("homeland5", "상가점포", "의창구", "창원시 의창구 도계동 360-3번지 금강초원빌라 102호", "전세", "26평", "2억7천만원", "6.jpg", "수익형 대로변가까이 잘지으진 다가구 공실없음 건령짧고 주차확실"),
("homeland6", "원룸/투룸", "성산구", "경상남도 창원시 성산구 신월동 90 주공아파트", "전세", "35평", "1억3천만원/월10만원", "7.jpg", "관리처분인가고시 / 급매물 / 분양34확정"),
("homeland7", "원룸/투룸", "성산구", "경상남도 창원시 성산구 대방동 358", "월세", "27평", "800만원/45만원", "8.jpg", "단지내 제일 선호하는 동호수"),
("homeland8", "원룸/투룸", "성산구", "경상남도 창원시 성산구 용호동 63", "매매", "20평", "3억5천만원", "9.jpg", "깨끗 조용하고 투자추천"),
("homeland2", "주택", "성산구", "경상남도 창원시 성산구 가음동 12 창원 센텀 푸르지오", "전세", "42평", "1억7천만원", "10.jpg", "가음동 창원센텀푸르지오 84.39㎡ 59.95㎡ 24층중 15층 남향 109동 고층 에어컨2/가격조정가 매5억9,000 즉시입주"),
("homeland1", "주택", "합포구", "경상남도 창원시 마산합포구 교방동 355-1", "매매", "38평", "5억", "1.JPG", "캡5천만원으로내집마련.전세안고가능.수리되어이쁜집.성원전문"),
("homeland", "아파트/주상복합", "합포구", "경상남도 창원시 마산합포구 월영동 738 마린애시앙부영", "매매", "32평", "4억6천만원", "2.png", "빠른입주/위치좋은1층.매연걱정없는위치.상가.어린이집 인접."),
("homeland", "아파트/주상복합", "합포구", "경상남도 창원시 마산합포구 현동 210", "매매", "36평", "3억 2천만원", "5.jpg", "입구동 고층 선호동라인 상권형성 생활권편리 주인거주 집상태깨끗"),
("homeland", "주택", "회원구", "경상남도 창원시 마산회원구 내서읍 원계리 647 ", "전세", "42평", "7천만원", "7.jpg", "거실확장 주인거주 집깨끗 층간소음걱정끝 마음껏 뛰놀아요"),
("homeland", "상가점포", "회원구", "경상남도 창원시 마산회원구 양덕동 84-14", "매매", "23평", "5억", "8.jpg", "남향 입주조율 따뜻한집 빠른입주");


insert into property (host_id, category, location, address, trading_type, size, price, photo, message) values
("homeland", "아파트/주상복합", "성산구", "경상남도 창원시 성산구 상남동 45-1 성원아파트", "매매", "32평", "5억", "1.JPG", "캡5천만원으로내집마련.전세안고가능.수리되어이쁜집.성원전문"),
("homeland", "아파트/주상복합", "합포구", "경상남도 창원시 마산합포구 월영동 738 마린애시앙부영", "매매", "32평", "4억6천만원", "2.png", "빠른입주/위치좋은1층.매연걱정없는위치.상가.어린이집 인접."),
("homeland", "아파트/주상복합", "합포구", "경상남도 창원시 마산합포구 현동 210", "매매", "36평", "3억 2천만원", "5.jpg", "입구동 고층 선호동라인 상권형성 생활권편리 주인거주 집상태깨끗"),
("homeland", "주택", "회원구", "경상남도 창원시 마산회원구 내서읍 원계리 647 ", "전세", "42평", "7천만원", "7.jpg", "거실확장 주인거주 집깨끗 층간소음걱정끝 마음껏 뛰놀아요"),
("homeland", "상가점포", "회원구", "경상남도 창원시 마산회원구 양덕동 84-14", "매매", "23평", "5억", "8.jpg", "남향 입주조율 따뜻한집 빠른입주");
select * from member;
select * from property;

drop table property;
drop table member;

create table likes(
    id varchar(20) not null,
    address varchar(50) not null,
    foreign key(id) references member(id)
);
select * from likes;

drop table likes;
delete from likes where id="homeland";

create table messages(
   host_id varchar(20) not null,
    address varchar(50) not null,
    photo varchar(30) not null,
    m_name varchar(20) not null,
    m_phone int(11) not null,
    m_message varchar(100),
    foreign key(host_id) references member(id)
);
select * from messages;
insert into messages (host_id, address, photo, m_name, m_phone, m_message) values
("homeland", "경상남도 창원시 성산구 상남동 45-1 성원아파트", "5.jpg", "김덕순", 01012341234, "즉시 입주 가능한가요?");

drop table messages;