
/*�������� ��ȸ*/
select * from tblVet;

select * from tblVet where name like '%�˻���%';

/*��ȣ�� ��ȸ*/
create or replace view vwShelter
as
select 
    s.seqShelter as seqShelter,            --��ȣ
    s.image as image,               --�̹���                           
    s.name as name,                 --�̸�
    s.address as address,           --�ּ�
    s.tel as tel,                   --��ȭ��ȣ
    s.account as account,           --�Ŀ�����
    s.time as time,                 --��ð�
    s.content as content,           --�Ұ�
    to_char(v.startDate, 'yyyy/mm/dd') as startDate,        --���� ������
    to_char(v.endDate, 'yyyy/mm/dd') as endDate             --���� ������
from tblShelter s
    inner join tblVolunteer v
        on s.seqShelter = v.seqShelter;
 


/*��ȣ�� ����*/
create or replace view vwShelter
as
select 
    s.seqShelter as seqShelter,            --��ȣ
    s.name as name,                 --�̸�
    to_char(v.startDate, 'yyyy/mm/dd') as startDate,        --���� ������
    to_char(v.endDate, 'yyyy/mm/dd') as endDate             --���� ������
from tblShelter s
    inner join tblVolunteer v
        on s.seqShelter = v.seqShelter;
    
        
select * from vwShelter;
        
        
/*���� �˻�*/

create or replace view vwLocationDetail
as
select
    l.seqLocation as seqLocation,
    l.location as location,
    ld.locationdetail as locationdetail
from tblLocationDetail ld
    inner join tblLocation l
        on l.seqLocation = ld.seqLocation;

        
/*FAQ*/
create or replace view vwFAQ
as
select 
    f.seqFAQ as seqFaq, 
    fc.category as category, 
    f.title as title, 
    f.content as content 
from tblFAQ f 
    inner join tblFAQCategory fc 
        on f.seqCategory = fc.seqFAQCategory;
        
        
       

